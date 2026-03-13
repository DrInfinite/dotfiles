# File system
if command -v eza &>/dev/null; then
  alias ls='eza -lh --group-directories-first --icons=auto'
  alias lsa='ls -a'
  alias lt='eza --tree --level=2 --long --icons --git'
  alias lta='lt -a'
fi

if [[ "$TERM" == "xterm-kitty" ]]; then
  alias ff="fzf --preview 'case \$(file --mime-type -b {}) in image/*) kitty icat --clear --transfer-mode=memory --stdin=no --place=\${FZF_PREVIEW_COLUMNS}x\${FZF_PREVIEW_LINES}@0x0 {} ;; *) bat --style=numbers --color=always {} ;; esac'"
else
  alias ff="fzf --preview 'bat --style=numbers --color=always {}'"
fi
alias eff='$EDITOR "$(ff)"'
sff() {
  if [ $# -eq 0 ]; then
    echo "Usage: sff <destination> (e.g. sff host:/tmp/)"
    return 1
  fi
  local file
  file=$(find . -type f -printf '%T@\t%p\n' | sort -rn | cut -f2- | ff) && [ -n "$file" ] && scp "$file" "$1"
}

alias find='fd -H --color=always'
alias grep='rg --color=auto'

# Directories
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

if command -v zoxide &>/dev/null; then
  # alias cd="zd"
  zd() {
    if (($# == 0)); then
      builtin cd ~ || return
    elif [[ -d $1 ]]; then
      builtin cd "$1" || return
    else
      if ! z "$@"; then
        echo "Error: Directory not found"
        return 1
      fi

      printf "\U000F17A9 "
      pwd
    fi
  }
fi

open() (
  xdg-open "$@" >/dev/null 2>&1 &
)

# Tools
alias cat='bat'
alias ff='fastfetch'
alias lzg='lazygit'
alias lzd='lazydocker'
alias man='wikiman'
n() { if [ "$#" -eq 0 ]; then nvim .; else nvim "$@"; fi; }
alias t='tmux'
alias vim='nvim'

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
