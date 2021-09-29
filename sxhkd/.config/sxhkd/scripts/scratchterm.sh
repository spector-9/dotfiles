#!/bin/sh

if [ -z $1 ]; then
	echo "Usage: $0 <name of hidden scratchpad window>"
	exit 1
fi
    
pids=$(xdotool search --class ${1})
if [ -z "$pids" ]; then
  alacritty --class dropdown,dropdown -t dropdown -e "zsh" &
else
    for pid in $pids; do
        echo "Toggle $pid"
        bspc node $pid --flag hidden -f
    done
fi

