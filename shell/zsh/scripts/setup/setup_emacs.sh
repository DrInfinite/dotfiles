#!/usr/bin/zsh

sudo pacman -S emacs

rm -rf ~/.emacs.d

# Clone Doom Emacs repository
git clone https://github.com/hlissner/doom-emacs ~/.emacs.d

# Run Doom Emacs installer
~/.emacs.d/bin/doom install

# Run Doom Emacs sync for custom packages
~/.emacs.d/bin/doom sync
