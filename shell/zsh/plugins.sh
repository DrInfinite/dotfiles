#!/usr/bin/zsh

zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-autosuggestions

# Completions
zinit light zsh-users/zsh-completions
autoload -U compinit && compinit
zinit cdreplay -q

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no

# fzf Integration
zinit light Aloxaf/fzf-tab
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls --color $realpath'

# Snippets
zinit snippet OMZP::archlinux
