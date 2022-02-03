#!/bin/sh
home_path="$HOME"
script_path="$home_path/.config/sxhkd/scripts/"

path=$(dmenu -p "Folder name: " -i -l 20 < "$script_path"/dir.txt | sed "s|~|${home_path}|g")
[ ! -z "$path" ] && pcmanfm "$path"

