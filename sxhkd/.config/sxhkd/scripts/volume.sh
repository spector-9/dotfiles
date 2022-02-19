#!/bin/bash

# You can call this script like this:
# $./volume.sh up
# $./volume.sh down
# $./volume.sh mute

function get_volume {
    pamixer --get-volume
}

function is_mute {
    pamixer --get-mute
}

function send_notification {
    DIR=`dirname "$0"`
    volume=`get_volume`

    if [ "$volume" = "0" ]; then
        icon_name="/usr/share/icons/Paper/48x48/notifications/notification-audio-volume-muted.svg"
        $DIR/notify-send.sh "$volume""      " -i "$icon_name" -t 2000 -h int:value:"$volume" -h string:synchronous:"─" --replace=555
    else
        if [  "$volume" -lt "10" ]; then
            icon_name="/usr/share/icons/Paper/48x48/notifications/notification-audio-volume-low.svg"
            $DIR/notify-send.sh "$volume""     " -i "$icon_name" --replace=555 -t 2000
        else
            if [ "$volume" -lt "30" ]; then
                icon_name="/usr/share/icons/Paper/48x48/notifications/notification-audio-volume-low.svg"
            else
                if [ "$volume" -lt "70" ]; then
                    icon_name="/usr/share/icons/Paper/48x48/notifications/notification-audio-volume-medium.svg"
                else
                    icon_name="/usr/share/icons/Paper/48x48/notifications/notification-audio-volume-high.svg"
                fi
            fi
        fi
    fi

    bar=$(seq -s "─" $(($volume/5)) | sed 's/[0-9]//g')
    # Send the notification
    $DIR/notify-send.sh "$volume"" ""$bar" -i "$icon_name" -t 2000 -h int:value:"$volume" -h string:synchronous:"$bar" --replace=555

}

case $1 in
    up)
        # Set the volume on (if it was muted)
        pamixer -u > /dev/null
        # Up the volume (+ 5%)
        pamixer -i 5 > /dev/null
        send_notification
	;;

    down)
        pamixer -u > /dev/null
        pamixer -d 5 > /dev/null
        send_notification
	;;

    mute)
    # Toggle mute
	pamixer -t > /dev/null
	if is_mute ; then
        DIR=`dirname "$0"`
        $DIR/notify-send.sh -i "/usr/share/icons/Paper/48x48/notifications/notification-audio-volume-muted.svg" --replace=555 -u normal "Mute" -t 2000
	else
	    send_notification
	fi
	;;
esac
