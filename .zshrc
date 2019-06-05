# davidtwco .zshrc Configuration
#	dotfiles: https://github.com/davidtwco/dotfiles
#	website: https://davidtw.co
# ==================================================

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
    RESET="$(tput sgr0)"
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
    RESET=""
fi
# }}}

# Functions {{{
# =========
_has() {
    which $1>/dev/null 2>&1
}
# }}}

# Bindings {{{
# ========
# Use vim keybindings.
set -o vi
bindkey -v

# Bind keys for Surface and other strange keyboards.
bindkey "^?" backward-delete-char
bindkey "^W" backward-kill-word
bindkey "^H" backward-delete-char
bindkey "^U" backward-kill-line
bindkey "[3~" delete-char
bindkey "[7~" beginning-of-line
bindkey "[1~" beginning-of-line
bindkey "[8~" end-of-line
bindkey "[4~" end-of-line

# Bind keys for history search
bindkey "" history-incremental-pattern-search-backward

# Disable control flow, allows CTRL+S to be used.
stty -ixon
# }}}

# Environment {{{
# ===========
# Set a cache dir.
export ZSH_CACHE_DIR=$HOME/.zsh/cache

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

# 10ms for key sequences
export KEYTIMEOUT=1

# Ensure editor is Vim
export EDITOR=vim

# Ensure Vim and others use 256 colours.
if [[ "$TERM" != "screen"* && "$TERM" != "tmux"* ]]; then
    export TERM=xterm-256color
fi

# Set Go directory
export GOPATH=$HOME/.go

# Allow Vagrant to access Windows outside of WSL.
export VAGRANT_WSL_ENABLE_WINDOWS_ACCESS="1"

# Don't clear the screen when leaving man.
export MANPAGER='less -X'

# Enable persistent REPL history for node.
export NODE_REPL_HISTORY="$HOME/.node_history"

# Use sloppy mode by default, matching web browsers.
export NODE_REPL_MODE='sloppy'

# Set GEM_HOME for Ruby.
if _has ruby; then
    export GEM_HOME="$(ruby -e 'print Gem.user_dir')"
fi

# Connect to Docker over TCP. Allows connections to Docker for Windows.
if grep -q Microsoft /proc/version; then
    export DOCKER_HOST=tcp://127.0.0.1:2375
fi
# }}}

# GPG/SSH Agent {{{
# =========
export GPG_TTY=$(tty)
if _has gpg-agent && _has gpgconf; then
    export SSH_AUTH_SOCK="$(gpgconf --list-dirs agent-ssh-socket)"
    if [ -z $SSH_CONNECTION ]; then
        # Don't start the `gpg-agent` for remote connections. The sockets from the local host
        # will be forwarded and picked up by the gpg client.
        gpgconf --launch gpg-agent
    fi
fi
# }}}

# Path {{{
# ====
# In zsh, the $PATH variable is tied to the $path variable.
# This makes the $path variable act like a set.
typeset -U path

# Add our directories.
path=("$HOME/bin" $path)
path=("$HOME/.cargo/bin" $path)
path=("$HOME/.go/bin" $path)
path=("$HOME/.local/bin" $path)
path=("/opt/puppetlabs/bin" $path)
path=("/usr/local/cuda/bin" $path)
path=("$HOME/.fzf/bin" $path)
path=("$HOME/.yadm/external/git-imerge" $path)
if _has ruby; then
    path=("$(ruby -e 'print Gem.user_dir')" $path)
    path=("$(ruby -e 'print Gem.user_dir')/bin" $path)
fi
if _has ccache; then
    path=("/usr/lib/ccache" $path) # Ubuntu
    path=("/usr/lib/ccache/bin" $path) # Arch
fi

# Using the (N-/) glob qualifier we can remove paths that do not exist.
path=($^path(N-/))
# }}}

# Completion {{{
# ==========
# Use modern completion system.
autoload -Uz +X compinit && compinit

# Add any completions.
fpath+=~/.yadm/completions

# Execute code in the background to not affect the current session.
{
    # Compile zcompdump, if modified, to increase startup speed.
    zcompdump="${ZDOTDIR:-$HOME}/.zcompdump"
    if [[ -s "$zcompdump" ]] && \
       [[ (! -s "${zcompdump}.zwc" || "$zcompdump" -nt "${zcompdump}.zwc") ]]; then
      zcompile -U "$zcompdump"
    fi
} &!

# Load colour variables.
eval "$(dircolors -b)"

# Description for options that are not described by completion functions.
zstyle ':completion:*' auto-description "${BRIGHT_BLACK}Specify %d${RESET}"
# Enable corrections, expansions, completions and approximate completers.
zstyle ':completion:*' completer _expand _complete _correct _approximate
# Display 'Completing $section' between types of matches, ie. 'Completing external command'
zstyle ':completion:*' format "${BRIGHT_BLACK}Completing %d${RESET}"
# Display all types of matches separately (same types as above).
zstyle ':completion:*' group-name ''
# Use menu selection if there are more than two matches (or when not on screen).
zstyle ':completion:*' menu select=2
zstyle ':completion:*' menu select=long
# Set colour specifications.
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
# Prompt to show when completions don't fit on screen.
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
# Define matcher specifications.
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' \
    'r:|[._-]=* r:|=* l:|=*'
# Don't use legacy `compctl`.
zstyle ':completion:*' use-compctl false
# Show command descriptions.
zstyle ':completion:*' verbose true
# Extra patterns to accept.
zstyle ':completion:*' accept-exact '*(N)'
# Enable caching.
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path $ZSH_CACHE_DIR

# Extra settings for processes.
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

# Modify git completion for only local files and branches - much faster!
__git_files () { _wanted files expl 'local files' _files  }

# tmuxinator completion.
source ~/.yadm/completions/tmuxinator.zsh

# npm completion
if _has npm; then
    source <(npm completion)
fi
# }}}

# History {{{
# =======
# Keep 10000000 lines of history within the shell and save it to ~/.zsh_history:
HISTFILE="$HOME/.zsh_history"
HISTSIZE=10000000
SAVEHIST=10000000

# Treat the '!' character specially during expansion.
setopt BANG_HIST
# Write the history file in the ":start:elapsed;command" format.
setopt EXTENDED_HISTORY
# Write to the history file immediately, not when the shell exits.
setopt INC_APPEND_HISTORY
# Share history between all sessions.
setopt NO_SHARE_HISTORY
# Expire duplicate entries first when trimming history.
setopt HIST_EXPIRE_DUPS_FIRST
# Don't record an entry that was just recorded again.
setopt HIST_IGNORE_DUPS
# Delete old recorded entry if new entry is a duplicate.
setopt HIST_IGNORE_ALL_DUPS
# Do not display a line previously found.
setopt HIST_FIND_NO_DUPS
# Don't record an entry starting with a space.
setopt HIST_IGNORE_SPACE
# Don't write duplicate entries in the history file.
setopt HIST_SAVE_NO_DUPS
# Remove superfluous blanks before recording entry.
setopt HIST_REDUCE_BLANKS
# Don't execute immediately upon history expansion.
setopt HIST_VERIFY
# }}}

# Aliases {{{
# =======
# Load our aliases.
if [ -f ~/.aliases ]; then
    . ~/.aliases
fi
# }}}

# antibody {{{
# =======
# This makes the `zsh-nvm` plugin load lazily, and thus reduces the impact of the plugin on shell
# start-up time.
export NVM_LAZY_LOAD="true"

if _has antibody; then
    # If plugins have not been downloaded, then download and static load in future.
    if [[ ! -e "$HOME/.zsh_plugins.sh" ]]; then
        # Fetch plugins.
        antibody bundle < "$HOME/.antibody_bundle" > "$HOME/.zsh_plugins.sh"
    fi

    # Load plugins.
    source "$HOME/.zsh_plugins.sh"
fi
# }}}

# fasd {{{
# =====
if _has fasd; then
    fasd_cache="$ZSH_CACHE_DIR/fasd-init-cache"
    if [ "$(command -v fasd)" -nt "$fasd_cache" -o ! -s "$fasd_cache" ]; then
        fasd --init posix-alias zsh-hook zsh-ccomp zsh-ccomp-install >| "$fasd_cache"
    fi
    source "$fasd_cache"
    unset fasd_cache
fi
# }}}

# fzf {{{
# ===
# fzf via Homebrew
if [ -e /usr/local/opt/fzf/shell/completion.zsh ]; then
    source /usr/local/opt/fzf/shell/key-bindings.zsh
    source /usr/local/opt/fzf/shell/completion.zsh
fi

# fzf via local installation
if [ -f ~/.fzf.zsh ]; then
    source ~/.fzf.zsh
fi

if _has fzf && _has rg; then
    # fzf + ripgrep configuration
    export FZF_DEFAULT_COMMAND='rg --files --hidden --follow -g "!{.git}" 2>/dev/null'
    export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
    export FZF_DEFAULT_OPTS=''
elif _has fzf && _has ag; then
    # fzf + ag configuration
    export FZF_DEFAULT_COMMAND='ag --nocolor -g ""'
    export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
    export FZF_ALT_C_COMMAND="$FZF_DEFAULT_COMMAND"
    export FZF_DEFAULT_OPTS='
    --color fg:242,bg:236,hl:65,fg+:15,bg+:239,hl+:108
    --color info:108,prompt:109,spinner:108,pointer:168,marker:168
    '
fi

# }}}

# direnv {{{
# ======
if _has direnv; then
    eval "$(direnv hook zsh)"
fi
# }}}

# Prompt {{{
# ======
# Do not need to use `promptinit` because of how `pure` is loaded w/ antibody.
# However, need to set `RPS1` to empty, so that when the prompt defaults to the `walters` theme,
# we don't get the cwd appearing.
export RPS1=

PURE_GIT_DOWN_ARROW='↓'
PURE_GIT_UP_ARROW='↑'

# Print `pure` or `impure` when in a `nix-shell` before the prompt character. This requires
# re-implementing the Vim support in the prompt. Replace this with something in the pre-prompt
# once sindresorhus/pure#460 is implemented.
NIX_PROMPT=""
VIM_PROMPT="❯"

PROMPT='%(12V.%F{242}${psvar[12]}%f .)'
PROMPT+='%F{8}${NIX_PROMPT}%f%(?.%F{magenta}.%F{red})${VIM_PROMPT}%f '

prompt_pure_update_user_prompt() {
    zle || {
        print "error: pure_update_vim_prompt must be called when zle is active"
        return 1
    }

    VIM_PROMPT=${${KEYMAP/vicmd/❮}/(main|viins)/❯}

    if [[ ! -z "${IN_NIX_SHELL}" ]]; then
        NIX_PROMPT="${IN_NIX_SHELL:-} "
    else
        NIX_PROMPT=""
    fi

    zle .reset-prompt
}

function zle-line-init zle-keymap-select {
    prompt_pure_update_user_prompt
}

zle -N zle-line-init
zle -N zle-keymap-select
# }}}

# Neovim {{{
# ======
# If running in Neovim terminal mode then don't let us launch Neovim.
if [ -n "$NVIM_LISTEN_ADDRESS" ]; then
    alias nvim='echo "No nesting!"'
fi
# }}}

# Autosuggestions {{{
# ===============
# Use CTRL + ' ' to accept current autosuggestion.
bindkey '^ ' autosuggest-accept

ZSH_AUTOSUGGEST_USE_ASYNC=1
ZSH_AUTOSUGGEST_ACCEPT_WIDGETS=()
# }}}

# you-should-use {{{
# ==============
export YSU_MESSAGE_FORMAT="${BRIGHT_BLACK}Consider using the %alias_type\
 \"${WHITE}%alias${BRIGHT_BLACK}\"${RESET}"
# }}}

# vim:foldmethod=marker:foldlevel=0:sts=4:ts=4:sw=4:et
