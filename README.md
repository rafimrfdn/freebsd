# FreeBSD 13 setup on Thinkpad X220

All my configuration to run FreeBSD 13 on my Thinkpad X220

---

On this FreeBSD setup I run [DWM](https://github.com/rafimrfdn/dwm-freebsd) and works very smooth.

## Some apps installed

```
pkg install doas xorg zsh zsh-autosuggestions mpv pcmanfm rofi ranger libreoffice firefox-esr inkscape gimp lxappearance keepassxc kitty shotwell copyq neovim picom 
```

## Set some alias
I set alias in `.zshrc` file for example, I set alias to run NVIM with VIM command

```
alias vim="nvim"
```

After that run `source .zshrc` to make the alias work

## Some fonts installed

```
sudo pkg install terminus-ttf jetbrains-mono liberation-fonts-ttf
```

## Tips for you who set Xorg manually (be carefully)

Your fresh installed FreeBSD should **never run** `Xorg -configure` because it will broken the better preset from system.

But if you want to do it manually follow these steps :

The very important aspect in this repo is how I find good configuration for Xorg. 

First I create xorg configuration 

1. remove the `.X0-lock` file from `/tmp/` so that I can continue next step
2. run `sudo Xorg -configure`
3. copy `xorg.conf` file on this repo to the `/usr/local/etc/X11/`
4. reboot
