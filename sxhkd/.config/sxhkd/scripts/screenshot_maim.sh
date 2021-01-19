#!/bin/bash

# Script that gives you a prompt to take screenshot
# Dependencies:- rofi, maim
# Colors
BORDER="#1F1F1F"
SEPARATOR="#1F1F1F"
FOREGROUND="#A9ABB0"
BACKGROUND="#1F1F1F"
BACKGROUND_ALT="#252525"
HIGHLIGHT_BACKGROUND="#263238"
HIGHLIGHT_FOREGROUND="#FFFFFF"
BLACK="#000000"
WHITE="#ffffff"
RED="#e53935"
GREEN="#43a047"
YELLOW="#fdd835"
BLUE="#1e88e5"
MAGENTA="#00897b"
CYAN="#00acc1"
PINK="#d81b60"
PURPLE="#8e24aa"
INDIGO="#3949ab"
TEAL="#00897b"
LIME="#c0ca33"
AMBER="#ffb300"
ORANGE="#fb8c00"
BROWN="#6d4c41"
GREY="#757575"
BLUE_GREY="#546e7a"
DEEP_PURPLE="#5e35b1"
DEEP_ORANGE="#f4511e"
LIGHT_BLUE="#039be5"
LIGHT_GREEN="#7cb342"

# Main Script
directory="$HOME/Media/Pictures/SS/"
first_prompt="Fullscreen
Select a window or region
Copy to clipboard"


fullscreen (){
    file_name=$(date +%m"-"%d"-"%y"_"%I":"%M":"%S)
    maim -m 1 "$directory""$file_name"".png"
    notify-send -t 1200 "Screenshot saved" -i $HOME/Media/Pictures/SS/"$file_name".png
}

window (){
    file_name=$(date +%m"-"%d"-"%y"_"%I":"%M":"%S)
    maim -s -m 1 "$directory""$file_name"".png"
    notify-send -t 1200 "Screenshot saved" -i $HOME/Media/Pictures/SS/"$file_name".png
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
    chosen=$(echo "$first_prompt"| head -n 2 | rofi -dmenu -i -p "Screenshot area" -no-lazy-grab -show window \
    -hide-scrollbar true \
    -bw 0 \
    -lines 2 \
    -line-padding 8 \
    -padding 10 \
    -width 520 \
    -xoffset 700 -yoffset 55 \
    -location 1 \
    -font "Fantasque Sans Mono 10" \
    -color-enabled true \
    -color-window "$BACKGROUND,$BORDER,$SEPARATOR" \
    -color-normal "$BACKGROUND_ALT,$FOREGROUND,$BACKGROUND_ALT,$HIGHLIGHT_BACKGROUND,$HIGHLIGHT_FOREGROUND" \
    -color-active "$BACKGROUND,$MAGENTA,$BACKGROUND_ALT,$HIGHLIGHT_BACKGROUND,$HIGHLIGHT_FOREGROUND" \
    -color-urgent "$BACKGROUND,$YELLOW,$BACKGROUND_ALT,$HIGHLIGHT_BACKGROUND,$HIGHLIGHT_FOREGROUND" )
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
    chosen=$(echo "$first_prompt" | rofi -dmenu -i -p "Screenshot area" -no-lazy-grab -show window \
    -hide-scrollbar true \
    -bw 0 \
    -lines 3 \
    -line-padding 8 \
    -padding 10 \
    -width 520 \
    -xoffset 700 -yoffset 55 \
    -location 1 \
    -font "Fantasque Sans Mono 10" \
    -color-enabled true \
    -color-window "$BACKGROUND,$BORDER,$SEPARATOR" \
    -color-normal "$BACKGROUND_ALT,$FOREGROUND,$BACKGROUND_ALT,$HIGHLIGHT_BACKGROUND,$HIGHLIGHT_FOREGROUND" )
   # -color-active "$BACKGROUND,$MAGENTA,$BACKGROUND_ALT,$HIGHLIGHT_BACKGROUND,$HIGHLIGHT_FOREGROUND" \
   # -color-urgent "$BACKGROUND,$YELLOW,$BACKGROUND_ALT,$HIGHLIGHT_BACKGROUND,$HIGHLIGHT_FOREGROUND" )

    case $chosen in
        Fullscreen) fullscreen;;
        "Select a window or region") window;;
        "Copy to clipboard")  function_select_clipboard;;
    esac
}

function_select

