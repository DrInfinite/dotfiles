#!/usr/bin/env zsh
# Auto Completions
# source /usr/share/bash-completion/bash_completion

# Completions
source /usr/share/wikiman/widgets/widget.zsh

if [ -n "$ZELLIJ" ]; then
    # Inside Zellij: override PROMPT_COMMAND to do nothing
    PROMPT_COMMAND=''
else
    # Regular title setting for normal terminals
    PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD}\007"'
fi

# Set complete path
export PATH="./bin:$HOME/.local/bin:$HOME/.local/share/omarchy/bin:$PATH"
set +h
