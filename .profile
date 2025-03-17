#
# .profile - Bourne Shell startup script for login shells
#
# see also sh(1), environ(7).
#

# These are normally set through /etc/login.conf.  You may override them here
# if wanted.
# PATH=/sbin:/bin:/usr/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin:$HOME/bin; export PATH

# Setting TERM is normally done through /etc/ttys.  Do only override
# if you're sure that you'll never log in via telnet or xterm or a
# serial line.
# TERM=xterm; 	export TERM

EDITOR=nvim;   	export EDITOR
PAGER=less;  	export PAGER

# set ENV to a file invoked each time sh is started for interactive use.
#ENV=$HOME/.shrc; export ENV
ENV=$HOME/.bashrc; export ENV

# Let sh(1) know it's at home, despite /home being a symlink.
if [ "$PWD" != "$HOME" ] && [ "$PWD" -ef "$HOME" ] ; then cd ; fi

# Query terminal size; useful for serial lines.
if [ -x /usr/bin/resizewin ] ; then /usr/bin/resizewin -z ; fi

# Display a random cookie on each login.
if [ -x /usr/bin/fortune ] ; then /usr/bin/fortune freebsd-tips ; fi

#export XDG_RUNTIME_DIR=/var/run/user/$(id -u)
export XDG_RUNTIME_DIR=~/.tmp/xdg
#export WLR_BACKENDS=drm
#export WLR_DRM_DEVICE=/dev/dri/card0

#export WAYLAND_DISPLAY=wayland-1
#export DISPLAY=:0
#export DISPLAY=wayland-1

#export PIPEWIRE_RUNTIME_DIR=$XDG_RUNTIME_DIR
#export PULSE_SERVER="unix:$XDG_RUNTIME_DIR/pulse/native"

sway
