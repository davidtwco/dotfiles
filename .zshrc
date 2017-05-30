# David Wood's .zshrc Configuration
#	dotfiles: https://github.com/davidtwco/dotfiles
#	website: https://davidtw.co
# ==================================================

# General {{{
# =======
# Use vim keybindings.
bindkey -v
bindkey "^?" backward-delete-char
bindkey "^W" backward-kill-word
bindkey "^H" backward-delete-char
bindkey "^U" backward-kill-line
bindkey "[3~" delete-char
bindkey "[7~" beginning-of-line
bindkey "[1~" beginning-of-line
bindkey "[8~" end-of-line
bindkey "[4~" end-of-line

# Set a cache dir.
export ZSH_CACHE_DIR=$HOME/.zsh/cache

# Set the correct gpg tty.
export GPG_TTY=$(tty)

# 10ms for key sequences
export KEYTIMEOUT=1

# Ensure editor is Vim
export EDITOR=vim

# Ensure Vim and others use 256 colours.
export TERM=xterm-256color

# Set Go directory
export GOPATH=$HOME/.go

# Allow Vagrant to access Windows outside of WSL.
export VAGRANT_WSL_ENABLE_WINDOWS_ACCESS="1"
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

# Using the (N-/) glob qualifier we can remove paths that do not exist.
path=($^path(N-/))
# }}}

# Plugins {{{
# =================

	# zplug {{{
	# -------
	source ~/.config/zplug/init.zsh

	zplug "mafredri/zsh-async", from:github
	zplug "sindresorhus/pure", use:pure.zsh, from:github, as:theme

	# zplug "plugins/adb", from:oh-my-zsh
	# zplug "plugins/bower", from:oh-my-zsh
	# zplug "plugins/cargo", from:oh-my-zsh
	# zplug "plugins/cloudapp", from:oh-my-zsh
	zplug "plugins/command-not-found", from:oh-my-zsh
	# zplug "plugins/composer", from:oh-my-zsh
	zplug "plugins/debian", from:oh-my-zsh
	# zplug "plugins/django", from:oh-my-zsh
	zplug "plugins/docker", from:oh-my-zsh
	zplug "plugins/fasd", from:oh-my-zsh
	zplug "plugins/gem", from:oh-my-zsh
	zplug "plugins/gitfast", from:oh-my-zsh
	zplug "plugins/gitignore", from:oh-my-zsh
	zplug "plugins/gpg-agent", from:oh-my-zsh
	zplug "plugins/history", from:oh-my-zsh
	zplug "plugins/httpie", from:oh-my-zsh
	# zplug "plugins/mosh", from:oh-my-zsh
	# zplug "plugins/nmap", from:oh-my-zsh
	zplug "plugins/npm", from:oh-my-zsh
	zplug "plugins/pep8", from:oh-my-zsh
	zplug "plugins/pip", from:oh-my-zsh
	zplug "plugins/postgres", from:oh-my-zsh
	zplug "plugins/python", from:oh-my-zsh
	# zplug "plugins/rust", from:oh-my-zsh
	zplug "plugins/ssh-agent", from:oh-my-zsh
	zplug "plugins/systemd", from:oh-my-zsh
	zplug "plugins/sudo", from:oh-my-zsh
	zplug "plugins/tmux", from:oh-my-zsh
	# zplug "plugins/vagrant", from:oh-my-zsh
	zplug "plugins/vundle", from:oh-my-zsh
	# zplug "plugins/web-search", from:oh-my-zsh
	# zplug "plugins/yarn", from:oh-my-zsh
	# zplug "plugins/yii2", from:oh-my-zsh

	zplug "zsh-users/zsh-syntax-highlighting", from:github, defer:2
	zplug "zsh-users/zsh-completions", from:github

	# Install plugins if there are plugins that have not been installed
	if ! zplug check; then
		printf "Install? [y/N]: "
		if read -q; then
			echo; zplug install
		fi
	fi

	# Apply Changes
	zplug load
	# }}}

	# Other {{{
	# -----
	# Initialize fasd if it is installed.
	if which fasd>/dev/null 2>&1; then
		fasd_cache="$ZSH_CACHE_DIR/fasd-init-cache"
		if [ "$(command -v fasd)" -nt "$fasd_cache" -o ! -s "$fasd_cache" ]; then
			fasd --init posix-alias zsh-hook zsh-ccomp zsh-ccomp-install >| "$fasd_cache"
		fi
		source "$fasd_cache"
		unset fasd_cache
	fi

	# Source up.sh
	source $HOME/.config/up/up.sh
	# }}}

# }}}

# Prompt {{{
# =====
autoload -Uz promptinit
promptinit

VIM_PROMPT="❯"
PROMPT='%(?.%F{magenta}.%F{red})${VIM_PROMPT}%f '

prompt_pure_update_vim_prompt() {
	zle || {
		print "error: pure_update_vim_prompt must be called when zle is active"
		return 1
	}
	VIM_PROMPT=${${KEYMAP/vicmd/❮}/(main|viins)/❯}
	zle .reset-prompt
}

function zle-line-init zle-keymap-select {
	prompt_pure_update_vim_prompt
}
zle -N zle-line-init
zle -N zle-keymap-select
# }}}

# History {{{
# =======
setopt histignorealldups sharehistory

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history
# }}}

# Completion {{{
# ==========
# Use modern completion system
autoload -Uz compinit && compinit -d

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true
zstyle ':completion:*' accept-exact '*(N)'
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path $ZSH_CACHE_DIR

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'
# }}}

# vim:foldmethod=marker:foldlevel=0
