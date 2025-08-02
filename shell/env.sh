export STARSHIP_CONFIG=~/.config/starship/starship.toml

# pnpm
export PNPM_HOME="/home/naparajith/.local/share/mise/installs/node/22.14.0/bin/pnpm"
case ":$PATH:" in
*":$PNPM_HOME:"*) ;;
*) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

export ZELLIJ_AUTO_EXIT=true

# man pages
export MANPAGER='nvim +Man! "+set number relativenumber"'
export MANWIDTH=80

[ -f "/home/naparajith/.ghcup/env" ] && . "/home/naparajith/.ghcup/env" # ghcup-env
