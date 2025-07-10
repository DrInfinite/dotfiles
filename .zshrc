# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

. "$HOME/.cargo/env"

# Created by `pipx` on 2025-05-04 17:53:10
export PATH="$PATH:/home/naparajith/.local/bin"

source "$HOME/shell/zsh/rc.sh"
