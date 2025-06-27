export STARSHIP_CONFIG=~/.config/starship/starship.toml

# pnpm
export PNPM_HOME="/home/naparajith/.local/share/mise/installs/node/22.14.0/bin/pnpm"
case ":$PATH:" in
*":$PNPM_HOME:"*) ;;
*) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

export ZELLIJ_AUTO_EXIT=true

# Editor used by CLI
export EDITOR="nvim"
export SUDO_EDITOR="$EDITOR"
