# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

source "$HOME/shell/zsh/rc.sh"

# [[ $- == *i* ]] && bind -f ~/.config/inputrc

[ -f "/home/drinfinite/.ghcup/env" ] && . "/home/drinfinite/.ghcup/env" # ghcup-env