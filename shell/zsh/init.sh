# Set the directory we want to store zinit and plugins
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

# Check if zinit exists, if not, download and set it up
[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"

# Source zinit
source "${ZINIT_HOME}/zinit.zsh"

eval "$(fzf --zsh)"
eval "$(zellij setup --generate-auto-start zsh)"
eval "$(mise activate zsh)"
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

fastfetch
