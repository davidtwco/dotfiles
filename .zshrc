# David Wood's .zshrc Configuration
#	dotfiles: https://github.com/davidtwco/dotfiles
# 	website: https://davidtw.co
# ==================================================

# Plugins (Antigen) {{{
# =================
# Grab Antigen
source ~/.config/antigen/antigen.zsh

# Pure (Theme)
antigen bundle mafredri/zsh-async
antigen bundle sindresorhus/pure
# Oh-my-zsh Plugins
antigen bundle bower
antigen bundle cloudapp
antigen bundle command-not-found
antigen bundle django
antigen bundle docker
antigen bundle fasd
antigen bundle gem
antigen bundle gitfast
antigen bundle history
antigen bundle httpie
antigen bundle npm
antigen bundle pep8
antigen bundle pip
antigen bundle python
antigen bundle systemd
antigen bundle sudo
antigen bundle tmux
antigen bundle vagrant
antigen bundle web-search
antigen bundle yii2
# Features
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions

# Apply Changes
antigen apply
# }}}

# Prompt {{{
# =====
autoload -Uz promptinit
promptinit
# }}}

# History {{{
# =======
setopt histignorealldups sharehistory

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history
# }}}

# Completion {{{
# ==========
# Use modern completion system
autoload -Uz compinit
compinit

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

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'
# }}}

# vim:foldmethod=marker:foldlevel=0
