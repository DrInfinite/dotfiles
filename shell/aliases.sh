# File system
alias ls='eza -lh --group-directories-first --icons=auto --color=auto'
alias lsa='ls -a'
alias lt='eza --tree --level=2 --long --icons --git --color=auto'
alias lta='lt -a'
alias ff="fzf --preview 'bat --style=numbers --color=always {}'"
alias find='fd -H --color=always'
alias grep='rg --color=auto'

# Directories
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

zd() {
    if [ $# -eq 0 ]; then
        builtin cd ~ && return
    elif [ -d "$1" ]; then
        builtin cd "$1" || return
    else
        z "$@" && printf "\U000F17A9 " && pwd || echo "Error: Directory not found"
    fi
}

# Tools
n() { if [ "$#" -eq 0 ]; then nvim .; else nvim "$@"; fi; }
alias d='docker'
alias r='rails'
alias lzg='lazygit'
alias lzd='lazydocker'
alias vim='nvim'
alias cat='bat'
alias man='wikiman'

# Git
alias g='git'
alias gcm='git commit -m'
alias gcam='git commit -a -m'
alias gcad='git commit -a --amend'

# Custom
alias setup_font="~/shell/scripts/setup/setup_font.sh"
alias setup_arch="~/shell/scripts/setup/setup_arch.sh"
alias setup_firmware="~/shell/scripts/setup/setup_firmware.sh"
alias setup_emacs="~/shell/scripts/setup/programs/setup_emacs.sh"
alias doom="~/.config/emacs/bin/doom"

# Suffix Aliases
alias -s md=cat
alias -s json=cat
alias -s toml=cat
alias -s js='$EDITOR'
alias -s ts='$EDITOR'
alias -s go='$EDITOR'
alias -s rs='$EDITOR'
