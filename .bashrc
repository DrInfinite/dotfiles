#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

source "$HOME/shell/bash/rc.sh"

export MANPAGER='nvim +Man! "+set number relativenumber"'
export MANWIDTH=80
. "$HOME/.cargo/env"

# Created by `pipx` on 2025-05-04 17:53:10
export PATH="$PATH:/home/naparajith/.local/bin"
