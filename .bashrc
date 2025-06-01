#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

source "$HOME/shell/rc.sh"

# pnpm
export PNPM_HOME="/home/naparajith/.local/share/mise/installs/node/22.14.0/bin/pnpm"
case ":$PATH:" in
*":$PNPM_HOME:"*) ;;
*) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

export MANPAGER="nvim +Man!"
export MANWIDTH=80
. "$HOME/.cargo/env"

# Created by `pipx` on 2025-05-04 17:53:10
export PATH="$PATH:/home/naparajith/.local/bin"
