feh --bg-fill --randomize ~/Pictures/wp/* &
picom &
#/usr/local/libexec/polkit-gnome-authentication-agent-1 &
#xset mouse 5 1 &
#polybar -c ~/.config/polybar/config main &
#polybar main &

while true;do
#    xsetroot -name "vol $(pamixer --get-volume-human) $(uptime | awk '{print $2,$3}') $(date +"%d %b %Y at %H:%M %p")" 
#    xsetroot -name " $(pamixer --get-volume-human) $(date  +"%A %b %d") $(uptime | awk '{print $2,$3,$4,$1}')" 
#    xsetroot -name "$(date  +"%d %b %H:%M ")" 
#    xsetroot -name "$(date "+DATE: %d-%m-%Y TIME: %H:%M")"
    copyq &
    slstatus &
    dwm >/dev/null 2>&1
#    sleep 2
done 

#exec dwm

### FOR RUN BSPWM

#sxhkd &
#polybar main &
#xsetroot -cursor_name left_ptr
#
#exec bspwm

