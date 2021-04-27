#!/bin/bash

## Author : Aditya Shakya
## Github : adi1090x
# Custom Rofi Script

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

SDIR="$HOME/.config/polybar/scripts"
CDIR="$HOME/.config/sxhkd/scripts/color-change.sh"

# Launch Rofi
MENU="$(rofi -no-lazy-grab -sep "|" -dmenu -i -p 'Style :' \
-hide-scrollbar true \
-bw 0 \
-lines 5 \
-line-padding 10 \
-padding 20 \
-width 30 \
-xoffset 27 -yoffset 60 \
-location 1 \
-columns 2 \
-show-icons -icon-theme "Papirus" \
-font "Fantasque Sans Mono 10" \
-color-enabled true \
-color-window "$BACKGROUND,$BORDER,$SEPARATOR" \
-color-normal "$BACKGROUND_ALT,$FOREGROUND,$BACKGROUND_ALT,$HIGHLIGHT_BACKGROUND,$HIGHLIGHT_FOREGROUND" \
-color-active "$BACKGROUND,$MAGENTA,$BACKGROUND_ALT,$HIGHLIGHT_BACKGROUND,$HIGHLIGHT_FOREGROUND" \
-color-urgent "$BACKGROUND,$YELLOW,$BACKGROUND_ALT,$HIGHLIGHT_BACKGROUND,$HIGHLIGHT_FOREGROUND" \
<<< "♥ amber|♥ blue|♥ blue-grey|♥ brown|♥ cyan|♥ deep-orange|♥ deep-purple|♥ green|♥ grey|♥ indigo|♥ blue-light|♥ green-light|♥ lime|♥ orange|♥ pink|♥ purple|♥ red|♥ teal|♥ yellow|♥ amber-dark|♥ blue-dark|♥ blue-grey-dark|♥ brown-dark|♥ cyan-dark|♥ deep-orange-dark|♥ deep-purple-dark|♥ green-dark|♥ grey-dark|♥ indigo-dark|♥ blue-light-dark|♥ green-light-dark|♥ lime-dark|♥ orange-dark|♥ pink-dark|♥ purple-dark|♥ red-dark|♥ teal-dark|♥ yellow-dark")"
            case "$MENU" in
				## Light Colors
				*amber) $SDIR/colors-light.sh -amber &&  $CDIR -amber light;;
				*blue) $SDIR/colors-light.sh -blue &&  $CDIR -blue light;;
				*blue-grey) $SDIR/colors-light.sh -blue-grey &&  $CDIR -blue-grey light;;
				*brown) $SDIR/colors-light.sh -brown &&  $CDIR -brown light;;
				*cyan) $SDIR/colors-light.sh -cyan &&  $CDIR -cyan light;;
				*deep-orange) $SDIR/colors-light.sh -deep-orange &&  $CDIR -deep-orange light;;
				*deep-purple) $SDIR/colors-light.sh -deep-purple &&  $CDIR -deep-purple light;;
				*green) $SDIR/colors-light.sh -green &&  $CDIR -green light;;
				*grey) $SDIR/colors-light.sh -grey &&  $CDIR -grey light;;
				*indigo) $SDIR/colors-light.sh -indigo &&  $CDIR -indigo light;;
				*blue-light) $SDIR/colors-light.sh -light-blue &&  $CDIR -light-blue light;;
				*green-light) $SDIR/colors-light.sh -light-green &&  $CDIR -light-green light;;
				*lime) $SDIR/colors-light.sh -lime &&  $CDIR -lime light;;
				*orange) $SDIR/colors-light.sh -orange &&  $CDIR -orange light;;
				*pink) $SDIR/colors-light.sh -pink &&  $CDIR -pink light;;
				*purple) $SDIR/colors-light.sh -purple &&  $CDIR -purple light;;
				*red) $SDIR/colors-light.sh -red &&  $CDIR -red light;;
				*teal) $SDIR/colors-light.sh -teal &&  $CDIR -teal light;;
				*yellow) $SDIR/colors-light.sh -yellow &&  $CDIR -yellow light;;
				## Dark Colors
				*amber-dark) $SDIR/colors-dark.sh -amber &&  $CDIR -amber dark;;
				*blue-dark) $SDIR/colors-dark.sh -blue &&  $CDIR -blue dark;;
				*blue-grey-dark) $SDIR/colors-dark.sh -blue-grey &&  $CDIR -blue-grey dark;;
				*brown-dark) $SDIR/colors-dark.sh -brown &&  $CDIR -brown dark;;
				*cyan-dark) $SDIR/colors-dark.sh -cyan &&  $CDIR -cyan dark;;
				*deep-orange-dark) $SDIR/colors-dark.sh -deep-orange &&  $CDIR -deep-orange dark;;
				*deep-purple-dark) $SDIR/colors-dark.sh -deep-purple &&  $CDIR -deep-purple dark;;
				*green-dark) $SDIR/colors-dark.sh -green &&  $CDIR -green dark;;
				*grey-dark) $SDIR/colors-dark.sh -grey &&  $CDIR -grey dark;;
				*indigo-dark) $SDIR/colors-dark.sh -indigo &&  $CDIR -indigo dark;;
				*blue-light-dark) $SDIR/colors-dark.sh -light-blue &&  $CDIR -light-blue dark;;
				*green-light-dark) $SDIR/colors-dark.sh -light-green &&  $CDIR -light-green dark;;
				*lime-dark) $SDIR/colors-dark.sh -lime &&  $CDIR -lime dark;;
				*orange-dark) $SDIR/colors-dark.sh -orange &&  $CDIR -orange dark;;
				*pink-dark) $SDIR/colors-dark.sh -pink &&  $CDIR -pink dark;;
				*purple-dark) $SDIR/colors-dark.sh -purple &&  $CDIR -purple dark;;
				*red-dark) $SDIR/colors-dark.sh -red &&  $CDIR -red dark;;
				*teal-dark) $SDIR/colors-dark.sh -teal &&  $CDIR -teal dark;;
				*yellow-dark) $CDIR -yellow && $CDIR/colors-dark.sh -yellow dark;;
            esac
