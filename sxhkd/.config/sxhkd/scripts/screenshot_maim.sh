#!/bin/bash

# Script that gives you a prompt to take screenshot
# Dependencies:- rofi, maim

# Main Script
directory="$HOME/Media/Pictures/SS/"
file_name=$(date +%m"-"%d"-"%y"_"%H":"%M":"%S)
first_prompt="Fullscreen
Select a window or region
Copy to clipboard
Diagram"


fullscreen (){
    import -quality 100 +compress -window root "$directory""$file_name"".png"
    #maim -m 1 "$directory""$file_name"".png"
    [ -f "$directory""$file_name".png ] && notify-send -t 1200 "Screenshot saved" -i "$directory""$file_name".png
}

window (){
    maim -s -m 1 "$directory""$file_name"".png"
    [ -f "$directory""$file_name".png ] && notify-send -t 1200 "Screenshot saved" -i "$directory""$file_name".png
}

window_dia (){
    file_name=$(rofi -dmenu -p 'File name' -lines 1 -width 530 -xoffset 00 -yoffset -450 -bw 0 -color-normal "$BACKGROUND_ALT,$FOREGROUND,$BACKGROUND_ALT,$HIGHLIGHT_BACKGROUND,$HIGHLIGHT_FOREGROUND")
    maim -s -m 1 "$HOME/vimwiki/diagrams/""$file_name"".png"
    [ -f "$HOME"/vimwiki/diagrams/"$file_name".png ] && notify-send -t 1200 "Screenshot saved" -i "$HOME"/vimwiki/diagrams/"$file_name".png
}

fullscreen_clipboard (){
    maim -m 1 | xclip -selection clipboard -t image/png 
    notify-send -t 1200  "Copied to clipboard."
}

window_clipboard (){
    maim -s -m 1 | xclip -selection clipboard -t image/png
    notify-send -t 1200  "Copied to clipboard."
}

function_select_clipboard (){
    chosen=$(echo "$first_prompt"| head -n 2 | $HOME/.config/sxhkd/scripts/rofi_dmenu "-dmenu -l 4 -p Screenshot Area")
    case $chosen in
        Fullscreen) fullscreen_clipboard;;
        "Select a window or region") window_clipboard;;
    esac
}

function_select (){
    if [ ! -d "$directory" ]; then
        mkdir -p "$directory"
    fi

    # Launch Rofi
    chosen=$(echo "$first_prompt" | $HOME/.config/sxhkd/scripts/rofi_dmenu "-dmenu -l 4 -p Screenshot Area")

    case $chosen in
        Fullscreen) fullscreen;;
        "Select a window or region") window;;
        "Copy to clipboard") function_select_clipboard;;
        "Diagram") window_dia;;
    esac
}

function_select

