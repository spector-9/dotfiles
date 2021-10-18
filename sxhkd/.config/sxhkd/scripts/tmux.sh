#!/bin/sh
# If tmux is not active
x=$(tmux list-sessions | cut -d: -f1)
[ ! "$x" = 'master' ] && tmux new-session -d -s master 'nnn' 

lastPaneNumber=$(tmux list-panes | tail -n1 | cut -d: -f1)
tmux splitw -hp 90 -t "$lastPaneNumber" "nvim $1"
