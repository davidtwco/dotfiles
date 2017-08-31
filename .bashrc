# David Wood's .bashrc Configuration
#	dotfiles: https://github.com/davidtwco/dotfiles
#	website: https://davidtw.co
# ==================================================

# Shell {{{
# =====
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
RED="$(tput setaf 1)"
GREEN="$(tput setaf 2)"
YELLOW="$(tput setaf 3)"
BLUE="$(tput setaf 4)"
MAGENTA="$(tput setaf 5)"
CYAN="$(tput setaf 6)"
WHITE="$(tput setaf 7)"
GRAY="$(tput setaf 8)"
BOLD="$(tput bold)"
UNDERLINE="$(tput sgr 0 1)"
INVERT="$(tput sgr 1 0)"
NOCOLOR="$(tput sgr0)"
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

# GPG Agent {{{
# =========
export GPG_TTY=$(tty)
if which gpg-agent>/dev/null 2>&1; then
	eval "$(gpg-agent --daemon)"
fi
# }}}

# Environment Variables {{{
# =====================
export DOCKER_HOST=tcp://127.0.0.1:2375
export VAGRANT_WSL_ENABLE_WINDOWS_ACCESS="1"
export EDITOR=vim
export TERM=xterm-256color
export GOPATH=$HOME/.go
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

# tmux helper completion {{{
# =======================
source ~/.bin/tmuxinator.bash # tmuxinator
if which tmuxp>/dev/null 2>&1; then
	eval "$(_TMUXP_COMPLETE=source tmuxp)" # tmuxp
fi
# }}}

# Up {{{
# ==
source $HOME/.yadm/external/up/up.sh
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

# vim:foldmethod=marker:foldlevel=0:noexpandtab
