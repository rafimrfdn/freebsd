#!/bin/sh

case $( basename "$( tty )" ) in 
        ttyv0) 
# Start DWM on TTYV0 
picom &
xset r rate 300 50 &
xset mouse 5 1 &
feh --bg-fill --randomize ~/Pictures/wp/* &
conky -b &
~/.scripts/reducetty.sh &       # to reduce ttyv run background 
xrdb -merge .Xresources &       # this is to run .Xresources as Xterm config
while true;do
	copyq &
	slstatus &
	dbus-launch --exit-with-session dwm > /dev/null 2>&1
done
exec dwm
;; 
       ttyv1) 
# Start KDE Plasma on TTYV1
exec ck-launch-session startplasma-x11
;; 

       ttyv2) 
# Start Gnome on TTYV2
exec gnome-session
;; 
       ttyv3) 
# Start XFCE on TTYV3
. /usr/local/etc/xdg/xfce4/xinitrc
;; 
        esac 
