if [[ -z "$DISPLAY" ]] && [[ $(tty) = /dev/ttyv0 ]]; then
	exec startx
fi

export SHELL='/usr/local/bin/zsh'
