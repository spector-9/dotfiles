#!/bin/sh 

dir="$HOME/.config/polybar/scripts/rofi"
rofi_command="rofi -theme $dir/powermenu.rasi"

# Options
shutdown=" Shutdown"
reboot=" Restart"
lock=" Lock"
suspend="☾ Sleep"
logout=" Logout"

# Confirmation
confirm_exit() {
	rofi -dmenu\
		-i\
		-no-fixed-num-lines\
		-p "Are You Sure? : "\
		-theme $dir/confirm.rasi
}

# Message
msg() {
	rofi -theme "$dir/message.rasi" -e "Available Options  -  yes / y / no / n"
}

# Variable passed to rofi
options="$lock\n$suspend\n$logout\n$reboot\n$shutdown"

chosen="$(echo "$options" | $rofi_command  -i -p "Search: " -dmenu -selected-row 0)"
case $chosen in
    "$shutdown")
		ans=$(confirm_exit &)
		if [ "$ans" = "yes" ] || [ "$ans" = "YES" ] || [ "$ans" = "y" ] || [ "$ans" = "Y" ]; then
            sudo poweroff
		elif [ "$ans" = "no" ] || [ "$ans" = "NO" ] || [ "$ans" = "n" ] || [ "$ans" = "N" ]; then
			exit 0
        else
			msg
        fi
        ;;
    "$reboot")
		ans=$(confirm_exit &)
		if [ "$ans" = "yes" ] || [ "$ans" = "YES" ] || [ "$ans" = "y" ] || [ "$ans" = "Y" ]; then
            sudo /usr/sbin/reboot
		elif [ "$ans" = "no" ] || [ "$ans" = "NO" ] || [ "$ans" = "n" ] || [ "$ans" = "N" ]; then
			exit 0
        else
			msg
        fi
        ;;
    "$lock")
		if [ -f /usr/bin/betterlockscreen ]; then
			betterlockscreen -l
		elif [ -f /usr/bin/i3lock ]; then
			i3lock
		fi
        ;;
    "$suspend")
		ans=$(confirm_exit &)
		if [ "$ans" = "yes" ] || [ "$ans" = "YES" ] || [ "$ans" = "y" ] || [ "$ans" = "Y" ]; then
			systemctl suspend
		elif [ "$ans" = "no" ] || [ "$ans" = "NO" ] || [ "$ans" = "n" ] || [ "$ans" = "N" ]; then
			exit 0
        else
			msg
        fi
        ;;
    "$logout")
		ans=$(confirm_exit &)
		if [ "$ans" = "yes" ] || [ "$ans" = "YES" ] || [ "$ans" = "y" ] || [ "$ans" = "Y" ]; then
			if [ "$DESKTOP_SESSION" = "Openbox" ]; then
				openbox --exit
			elif [ "$DESKTOP_SESSION" = "bspwm" ]; then
				bspc quit
			elif [ "$DESKTOP_SESSION" = "i3" ]; then
				i3-msg exit
			fi
		elif [ "$ans" = "no" ] || [ "$ans" = "NO" ] || [ "$ans" = "n" ] || [ "$ans" = "N" ]; then
			exit 0
        else
			msg
        fi
        ;;
esac
