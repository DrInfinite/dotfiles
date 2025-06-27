# Auto Completions
# source /usr/share/bash-completion/bash_completion

# Keybindings
bindkey -v

# Completions
source /usr/share/wikiman/widgets/widget.zsh

if [ -n "$ZELLIJ" ]; then
  # Inside Zellij: override PROMPT_COMMAND to do nothing
  PROMPT_COMMAND=''
else
  # Regular title setting for normal terminals
  PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD}\007"'
fi
