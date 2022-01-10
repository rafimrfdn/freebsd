# FreeBSD 13 setup on Thinkpad X220

All my configuration to run FreeBSD 13 on my Thinkpad X220

---

On this FreeBSD setup I run [DWM](https://github.com/rafimrfdn/dwm-freebsd) and works very smooth.

## Some apps installed

```
sudo pkg install xorg mpv pcmanfm rofi ranger libreoffice firefox inkscape gimp lxappearance keepassxc kitty shotwell copyq neovim picom 
```

## Some fonts installed

```
sudo pkg install terminus-ttf jetbrains-mono
```

The very important aspect in this repo is how I find good configuration for Xorg. 

First I create xorg configuration 

1. remove the `.X0-lock` file from `/tmp/` so that I can continue next step
2. run `sudo Xorg -configure`
3. copy `xorg.conf` file on this repo to the `/usr/local/etc/X11/`
4. reboot
