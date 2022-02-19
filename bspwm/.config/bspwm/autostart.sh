#! /bin/sh

killall -q polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
polybar -c ~/.config/polybar/config.ini main &

[ ! -z "$(pgrep -x sxhkd)" ] && killall sxhkd 
sxhkd &

[ ! -z "$(pgrep -x parcellite)" ] && killall parcellite
parcellite -n &

nitrogen --restore &

[ ! -z "$(pgrep -x picom)" ] && killall picom 
picom --experimental-backends &

[ ! -z "$(pgrep -x mpd)" ] && killall mpd 
mpd &

[ ! -z "$(pgrep -x xss-lock)" ] && killall xss-lock 
xss-lock -- betterlockscreen -l &

[ ! -z "$(pgrep -x polkit-mate-authentication-agent-1)" ] && killall polkit-mate-authentication-agent-1 
/usr/lib/mate-polkit/polkit-mate-authentication-agent-1 &

[ ! -z "$(pgrep -x xfce4-power-manager )" ] && killall xfce4-power-manager 
xfce4-power-manager &

[ ! -z "$(pgrep -x nm-applet )" ] && killall nm-applet 
nm-applet &

#[ ! -z "$(pgrep -x blueman-applet )" ] && killall blueman-applet 
#blueman-applet &

[ ! -z "$(pgrep -x pasystray )" ] && killall pasystray 
pasystray -m 100 &

[ ! -z "$(pgrep -x dunst )" ] && killall dunst 
dunst &

[ ! -z "$(pgrep -x udiskie )" ] && killall udiskie 
udiskie &

#[ ! -z "$(pgrep -x wireplumber )" ] && killall wireplumber 
#wireplumber &
#
#[ ! -z "$(pgrep -x pipewire )" ] && killall pipewire 
#pipewire &
#
#[ ! -z "$(pgrep -x pipewire-pulse )" ] && killall pipewire-pulse
#pipewire-pulse &

#[ ! -z "$(pgrep -f calcursenotification)" ] && kill $(pgrep -f calcursenotification)
#calcursenotification 15 &

xsetroot -cursor_name left_ptr &

#pulseeffects --gapplication-service &
xset r rate 230 40 &

