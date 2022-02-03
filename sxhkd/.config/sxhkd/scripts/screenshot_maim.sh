#!/bin/sh

# Script that gives you a prompt to take screenshot
# Dependencies:- rofi, maim

# Main Script
directory="$HOME/Media/Pictures/SS/"
file_name=$(date +%m-%d-%y_%H:%M:%S)
rofi_command="rofi -theme sidebar -dmenu -i"
first_prompt="Fullscreen
Select a window or region
Copy to clipboard
Diagram"


normal (){
    maim "$1" -m 1 "$directory""$file_name"".png"
    [ -f "$directory""$file_name".png ] && notify-send -t 1200 "Screenshot saved" -i "$directory""$file_name".png
}

window_dia (){
    file_name=$($rofi_command -dmenu -l 1 -p "File Name")
    maim -s -m 1 "$HOME/vimwiki/diagrams/""$file_name"".png"
    [ -f "$HOME"/vimwiki/diagrams/"$file_name".png ] && notify-send -t 1200 "Screenshot saved" -i "$HOME"/vimwiki/diagrams/"$file_name".png
}

clipboard (){
    maim "$1" -m 1 | xclip -selection clipboard -t image/png 
    notify-send -t 1200  "Copied to clipboard."
}

function_select_clipboard (){
    chosen=$(echo "$first_prompt"| head -n 2 | $rofi_command -l 4 -p "Screenshot Area: ")
    case $chosen in
        "Fullscreen") clipboard;;
        "Select a window or region") clipboard '-s';;
    esac
}

function_select (){
    if [ ! -d "$directory" ]; then
        mkdir -p "$directory"
    fi

    # Launch Rofi
    chosen=$(echo "$first_prompt" | $rofi_command -l 4 -p "Screenshot Area: ")

    case $chosen in
        "Fullscreen") normal "-q";;
        "Select a window or region") normal "-s";;
        "Copy to clipboard") function_select_clipboard;;
        "Diagram") window_dia;;
    esac
}

function_select
