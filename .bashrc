alias h='fc -l'
alias j=jobs
alias m="$PAGER"
alias ll='ls -laFo'
alias l='ls -l'
alias g='egrep -i'

alias vim='nvim'

# Enable arrow up/down history search
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

# Enable Ctrl + Arrow for word navigation
bind '"\e[1;5C": forward-word'
bind '"\e[1;5D": backward-word'

# Alias for history
alias history='fc -l'

# Fix Home/End keys in MobaXterm
bind '"\e[5~": beginning-of-line'
bind '"\e[6~": end-of-line'

# Set prompt: username@hostname:directory $
PS1="\u@\h:\w \\$ "

[[ $PS1 && -f /usr/local/share/bash-completion/bash_completion.sh ]] && \
	source /usr/local/share/bash-completion/bash_completion.sh

eval "$(starship init bash)"

