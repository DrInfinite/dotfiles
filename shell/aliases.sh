# File system
alias ls='eza -lh --group-directories-first --icons=auto --color=auto'
alias lsa='ls -a'
alias lt='eza --tree --level=2 --long --icons --git --color=auto'
alias lta='lt -a'
alias ff="fzf --disabled --bind 'change:reload:rg {q} --preview 'bat --style=numbers --color=always {}'"
alias find='fd -H --color=always'
alias cd='z'
alias grep='rg --color=auto'

# Directories
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# Tools
alias n='nvim'
alias g='git'
alias d='docker'
alias r='rails'
alias lzg='lazygit'
alias lzd='lazydocker'
alias vim='nvim'
alias cat='bat'
alias man='wikiman'

# Git
alias gcm='git commit -m'
alias gcam='git commit -a -m'
alias gcad='git commit -a --amend'

# Custom
alias on="~/shell/scripts/obsidian/new-note.sh"
alias setup_font="~/shell/scripts/setup/setup_font.sh"
alias setup_arch="~/shell/scripts/setup/setup_arch.sh"
alias setup_firmware="~/shell/scripts/setup/setup_firmware.sh"
alias setup_emacs="~/shell/scripts/setup/setup_emacs.sh"
alias doom="~/.emacs.d/bin/doom"
