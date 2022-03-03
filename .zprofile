#if [[ -z "$DISPLAY" ]] && [[ $(tty) = /dev/ttyv0 ]]; then
#	exec startx
#fi

# or just use this line

exec startx
