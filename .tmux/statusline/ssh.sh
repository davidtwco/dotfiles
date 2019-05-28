#!/usr/bin/env bash
# This script prints the username and hostname of a host if there is an
# active SSH connection, otherwise, it prints nothing.

tmux show-environment -g SSH_CONNECTION &>/dev/null
if [ $? -eq 0 ]; then
    printf "`whoami`@`hostname`"
fi

# vim:ft=sh:sw=4:sts=4:ts=4:et
