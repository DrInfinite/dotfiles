# Insert git commit template (Ctrl+X, G, C)
# \C-b moves cursor back one position
bindkey -s '^Xgc' 'git commit -m ""\C-b'

bindkey -s '^Xgro' 'git remote add origin git@github.com:'

# Expands history expressions like !! or !$ when you press space
bindkey ' ' magic-space

# Keybindings
bindkey -e
