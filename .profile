# davidtwco .profile Configuration
#	dotfiles: https://github.com/davidtwco/dotfiles
#	website: https://davidtw.co
# =================================

# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.

# Is bash running?
if [ -n "$BASH_VERSION" ]; then
    # Include .bashrc if it exists.
    if [ -f "$HOME/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi
fi

# vim:foldmethod=marker:foldlevel=0
