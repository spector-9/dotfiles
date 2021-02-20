#!/bin/sh

PDIR="$HOME/.config/sxhkd/scripts"
LAUNCH="polybar-msg cmd restart"
 
dark(){
    RED="#B71C1C"
    GREEN="#1B5E20"
    YELLOW="#F57F17"
    BLUE="#0D47A1"
    MAGENTA="#00897b"
    CYAN="#006064"
    PINK="#880E4F"
    PURPLE="#4A148C"
    INDIGO="#1A237E"
    TEAL="#004D40"
    LIME="#827717"
    amber="#ffb300"
    ORANGE="#E65100"
    BROWN="#3E2723"
    GREY="#212121"
    BLUE_GREY="#263238"
    DEEP_PURPLE="#311B92"
    DEEP_ORANGE="#BF360C"
    LIGHT_BLUE="#01579B"
    LIGHT_GREEN="#33691E"
}

light(){
    amber="#FF6F00"
    BLUE="#0D47A1"
    BLUE_GREY="#263238"
    BROWN="#3E2723"
    CYAN="#006064"
    DEEP_ORANGE="#BF360C"
    DEEP_PURPLE="#311B92"
    GREEN="#1B5E20"
    GREY="#212121"
    INDIGO="#1A237E"
    LIGHT_BLUE="#01579B"
    LIGHT_GREEN="#33691E"
    LIME="#827717"
    ORANGE="#E65100"
    PINK="#880E4F"
    PURPLE="#4A148C"
    RED="#B71C1C"
    TEAL="#004D40"
    YELLOW="#F57F17"
}

[ $2 = "dark" ] 2> /dev/null && dark
[ $2 = "light" ] 2> /dev/null && light

case $1 in
    "-amber" ) current_color="$amber";; 
    "-blue" ) current_color="$BLUE";;
    "-blue-grey" ) current_color="$BLUE_GREY";;
    "-brown" ) current_color="$BROWN";;
    "-cyan" ) current_color="$CYAN";;
    "-deep-orange" ) current_color="$DEEP_ORANGE";;
    "-deep-purple" ) current_color="$DEEP_PURPLE";;
    "-green" ) current_color="$GREEN";;
    "-grey" ) current_color="$GREY";;
    "-indigo" ) current_color="$INDIGO";;
    "-light-blue" ) current_color="$LIGHT_BLUE";;
    "-light-green" ) current_color="$LIGHT_GREEN";;
    "-lime" ) current_color="$LIME";;
    "-orange" ) current_color="$ORANGE";;
    "-pink" ) current_color="$PINK";;
    "-purple" ) current_color="$PURPLE";;
    "-red" ) current_color="$RED";;
    "-teal" ) current_color="$TEAL";;
    "-yellow" ) current_color="$YELLOW";;
esac

# Replacing colors
[ $current_color != '' ] 2>/dev/null && sed -i -e "s/HIGHLIGHT_BACKGROUND=.*/HIGHLIGHT_BACKGROUND=""$current_color""/g" $PDIR/menu
[ $current_color != '' ] 2>/dev/null && sed -i -e "s/HIGHLIGHT_BACKGROUND=.*/HIGHLIGHT_BACKGROUND=""$current_color""/g" $PDIR/app_switch
[ $current_color != '' ] 2>/dev/null && sed -i -e "s/HIGHLIGHT_BACKGROUND=.*/HIGHLIGHT_BACKGROUND=""$current_color""/g" $PDIR/screenshot_maim.sh

[ $# -lt 2 ] && echo "Enter 'light' or 'dark' as 2nd arg."
[ $# -lt 1 ] && echo "Available options:
-amber		-blue			-blue-grey		-brown
-cyan		-deep-orange	-deep-purple	-green
-grey		-indigo			-light-blue		-light-green
-lime		-orange			-pink			-purple
-red		-teal			-yellow"

