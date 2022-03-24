# This is zshrc config without ohmyzsh
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/freebsd/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

#alias ls='ls -G'
#export CLICOLOR=1
#export LSCOLORS=gxFxCxDxBxegedabagaced

export CLICOLOR=1
export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd
alias ll="ls -alG"

#PROMPT='%F{208}%n%f in %F{226}%~%f -> '
PROMPT='%F{226}%~%f '

export EDITOR=nvim
export XDG_RUNTIME_DIR=~/.tmp/xdg
