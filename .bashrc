# davidtwco .bashrc Configuration
#	dotfiles: https://github.com/davidtwco/dotfiles
#	website: https://davidtw.co
# ==================================================

# Shell {{{
# =====
if [[ -n $IN_NIX_SHELL ]]; then
    return
fi

# Due to limitations in Bash for Windows, in order to use
# an alternate shell, we must launch it from here. We cannot
# use chsh.
if grep -q Microsoft /proc/version; then
    # If we have zsh installed, use it.
    if which zsh>/dev/null 2>&1; then
        exec zsh
    fi
fi
# }}}

# Colors {{{
# ======
if [ -t 1 ]; then
    BLACK="$(tput setaf 0)"
    RED="$(tput setaf 1)"
    GREEN="$(tput setaf 2)"
    YELLOW="$(tput setaf 3)"
    BLUE="$(tput setaf 4)"
    MAGENTA="$(tput setaf 5)"
    CYAN="$(tput setaf 6)"
    WHITE="$(tput setaf 7)"
    BRIGHT_BLACK="$(tput setaf 8)"
    BRIGHT_RED="$(tput setaf 9)"
    BRIGHT_GREEN="$(tput setaf 10)"
    BRIGHT_YELLOW="$(tput setaf 11)"
    BRIGHT_BLUE="$(tput setaf 12)"
    BRIGHT_MAGENTA="$(tput setaf 13)"
    BRIGHT_CYAN="$(tput setaf 14)"
    BRIGHT_WHITE="$(tput setaf 15)"
    BOLD="$(tput bold)"
    UNDERLINE="$(tput sgr 0 1)"
    INVERT="$(tput sgr 1 0)"
    NOCOLOR="$(tput sgr0)"
else
    BLACK=""
    RED=""
    GREEN=""
    YELLOW=""
    BLUE=""
    MAGENTA=""
    CYAN=""
    WHITE=""
    BRIGHT_BLACK=""
    BRIGHT_RED=""
    BRIGHT_GREEN=""
    BRIGHT_YELLOW=""
    BRIGHT_BLUE=""
    BRIGHT_MAGENTA=""
    BRIGHT_CYAN=""
    BRIGHT_WHITE=""
    BOLD=""
    UNDERLINE=""
    INVERT=""
    NOCOLOR=""
fi
# }}}

# General {{{
# =======
# If not running interactively, don't do anything.
case $- in
    *i*);;
    *) return;;
esac

# Don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# Append to the history file, don't overwrite it.
shopt -s histappend

# For setting history length see HISTSIZE and HISTFILESIZE in bash(1).
HISTSIZE=1000
HISTFILESIZE=2000

# Check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# Make less more friendly for non-text input files, see lesspipe(1).
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# Set variable identifying the chroot you work in (used in the prompt below).
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# Disable control flow, allows CTRL+S to be used.
stty -ixon

# Enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
    if [ -f /usr/share/bash-completion/bash_completion ]; then
        . /usr/share/bash-completion/bash_completion
    elif [ -f /etc/bash_completion ]; then
        . /etc/bash_completion
    fi
fi
# }}}

# Aliases {{{
# =======
# Load our aliases.
if [ -f ~/.aliases ]; then
    . ~/.aliases
fi
# }}}

# SSH Agent {{{
# =========
env=~/.ssh/agent.env

agent_load_env () { test -f "$env" && . "$env" >| /dev/null ; }

agent_start () {
    (umask 077; ssh-agent >| "$env")
    . "$env" >| /dev/null ;
}

agent_load_env

# agent_run_state: 0=agent running w/ key; 1=agent w/o key; 2= agent not running
agent_run_state=$(ssh-add -l >| /dev/null 2>&1; echo $?)

if [ ! "$SSH_AUTH_SOCK" ] || [ $agent_run_state = 2 ]; then
    agent_start
    ssh-add
elif [ "$SSH_AUTH_SOCK" ] && [ $agent_run_state = 1 ]; then
    ssh-add
fi

unset env
# }}}

# GPG Agent {{{
# =========
export GPG_TTY=$(tty)
if which gpg-agent>/dev/null 2>&1; then
    eval "$(gpgconf --launch gpg-agent)"
    echo UPDATESTARTUPTTY | gpg-connect-agent
fi
# }}}

# Environment Variables {{{
# =====================
if grep -q Microsoft /proc/version; then
    export DOCKER_HOST=tcp://127.0.0.1:2375
fi

# Source any secret variables.
if [ -f $HOME/.secrets ]; then
    source $HOME/.secrets
fi

# Ensure we're using the correct locale.
if [ ! -f /etc/locale.gen ]; then
    export LANG=en_GB.UTF-8
elif grep ^en_GB.UTF-8 /etc/locale.gen 1>/dev/null; then
    export LANG=en_GB.UTF-8
elif grep ^en_US.UTF-8 /etc/locale.gen 1>/dev/null; then
    export LANG=en_US.UTF-8
fi

export VAGRANT_WSL_ENABLE_WINDOWS_ACCESS="1"
export EDITOR=vim
export TERM=xterm-256color
export GOPATH=$HOME/.go
if which ruby>/dev/null 2>&1; then
    export GEM_HOME="$(ruby -e 'print Gem.user_dir')"
fi
# }}}

# Path {{{
# ====
# This function loops over its arguments,
# checks if the paths exist, and then
# if not already in the PATH, adds them.
prependToPath() {
    for a; do
        if [ -d $a ] ; then
            case ":${PATH:=$a}:" in
                *:$a:*) ;;
                *) PATH="$a:$PATH" ;;
            esac;
        fi
    done
}

prependToPath $HOME/bin $HOME/.cargo/bin $HOME/.go/bin $HOME/.local/bin /opt/puppetlabs/bin
prependToPath /usr/local/cuda/bin
if which ruby>/dev/null 2>&1; then
    prependToPath "$(ruby -e 'print Gem.user_dir')"
    prependToPath "$(ruby -e 'print Gem.user_dir')/bin"
fi
if which ccache>/dev/null 2>&1; then
    prependToPath /usr/lib/ccache # Ubuntu
    prependToPath /usr/lib/ccache/bin # Arch
fi
export PATH="$PATH"
# }}}

# Prompt {{{
# ======
source $HOME/.bash_prompt
# }}}

# Vi Mode {{{
# =======
major=${BASH_VERSINFO[0]}
minor=${BASH_VERSINFO[1]}
if (( major > 4 )) || (( major == 4 && minor >= 4 )); then
    # Enable Vi mode if we are on Bash 4.4 and up.
    set -o vi
    # Bash shows the mode at the start of the last line of the prompt.
    bind "set show-mode-in-prompt on"
    # We configure the insert mode and cmd mode strings using the
    # colours defined above to match the colours in our Vim configuration
    # and the style of the bash prompt.
    #
    # $prompt_symbol is borrowed from the $HOME/.bash_prompt file.
    bind "set vi-ins-mode-string \1$CYAN\2$prompt_symbol\1$NOCOLOR\2"
    bind "set vi-cmd-mode-string \1$GREEN\2$prompt_symbol\1$NOCOLOR\2"
fi
# }}}

# tmux helper completion {{{
# =======================
source ~/.yadm/completions/tmuxinator.bash # tmuxinator
if which tmuxp>/dev/null 2>&1; then
    eval "$(_TMUXP_COMPLETE=source tmuxp)" # tmuxp
fi
# }}}

# fasd {{{
# ====
if which fasd>/dev/null 2>&1; then
    fasd_cache="$HOME/.fasd-init-bash"
    if [ "$(command -v fasd)" -nt "$fasd_cache" -o ! -s "$fasd_cache" ]; then
        fasd --init posix-alias bash-hook bash-ccomp bash-ccomp-install >| "$fasd_cache"
    fi
    unset fasd_cache
fi
# }}}

# fzf {{{
# ===
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
# }}}

# direnv {{{
# ======
if which direnv>/dev/null 2>&1; then
    eval "$(direnv hook bash)"
fi
# }}}

# Neovim {{{
# ======
# If running in Neovim terminal mode then don't let us launch Neovim.
if [ -n "$NVIM_LISTEN_ADDRESS" ]; then
    alias nvim='echo "No nesting!"'
fi
# }}}

# NVM {{{
# ===
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
# }}}

# vim:foldmethod=marker:foldlevel=0:sts=4:sw=4:ts=4:et
