#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

source ~/bash/rc

fastfetch

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
