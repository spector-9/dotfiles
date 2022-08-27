#!/bin/sh

# Script that saves webpage for offline consumption
# Dependencies:- rofi

# Main Script
directory="$HOME/Media/Documents/Articles/Webpages"
URL=$(xclip -o)
rofi_command="rofi -theme sidebar -dmenu -i"
first_prompt="Save
Remove
Read"


save() {
   file_name=$($rofi_command -l 1 -p 'File Name: ')
   [ -z "$file_name" ] && exit 1
   wget "$URL" -O "$directory/""$file_name" && notify-send -t 1200 "Page Saved"
}

read_file(){
   file_name=$(ls "$directory/" | $rofi_command -p 'File Name: ')
   [ -z "$file_name" ] && exit 1
   xdg-open "$directory/""$file_name"
}

remove_file(){
   file_name=$(ls "$directory/" | $rofi_command -p "File Name")
   [ -z "$file_name" ] && exit 1
   response=$($rofi_command -p "Delete file $file_name? ")
   [ -z "$response" ] && exit 1
   [ "$response" = 'y' ] && rm "$directory/""$file_name"
}

function_select (){
    if [ ! -d "$directory" ]; then
        mkdir -p "$directory"
    fi

    # Launch Rofi
    chosen=$(echo "$first_prompt" | $rofi_command -l 2 -p "Select: ")

    case $chosen in
        "Save") save;;
        "Read") read_file;;
        "Remove") remove_file;;
    esac
}

function_select
