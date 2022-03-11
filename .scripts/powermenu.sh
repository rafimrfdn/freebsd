#!/bin/sh

function powermenu 
    options="Cancel\nLogout\nRestart\nShutdown"
    selected=$(echo -e $options | rofi -dmenu -i -theme-str '@import "gnomepowermenu.rasi"')
    if [ $selected = "Shutdown" ]; then
        doas poweroff
      elif [ $selected = "Restart" ]; then
        doas init 6 
      elif [ $selected = "Logout" ]; then
        pkill -U $USER 
      elif [ $selected = "Cancel" ]; then
        return 
    fi


#chosen=$(printf "Shutdown\nRestart\nLogout" | rofi -dmenu -i -theme-str '@import "onedark.rasi"')
#
#case "$chosen" in
#  "Shutdown" doas poweroff ;;
#  "Restart" doas init 6 ;;
#  "Logout" pkill -u $USER ;;
#  *) exit 1 ;;
#esac
