sudo pacman -S emacs gum --needed

rm -rf ~/.emacs.d

gum confirm "Are you ready to clone the Doom Emacs repository?"

# Clone Doom Emacs repository
git clone https://github.com/hlissner/doom-emacs ~/.emacs.d

gum confirm "Would you like to run 'doom install' now?"

# Run Doom Emacs installer
~/.emacs.d/bin/doom install

gum confirm "Would you like to run 'doom sync' now?"

# Run Doom Emacs sync for custom packages
~/.emacs.d/bin/doom sync
