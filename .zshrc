# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

source "$HOME/shell/zsh/rc.sh"

# [[ $- == *i* ]] && bind -f ~/.config/inputrc
