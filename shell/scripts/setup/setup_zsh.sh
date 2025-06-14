#!/bin/bash

# Install zsh if not installed
if ! command -v zsh &>/dev/null; then
  echo "Installing zsh..."
  sudo pacman -Sy zsh
fi

# Set zsh as default shell
if [ "$SHELL" != "$(which zsh)" ]; then
  chsh -s "$(which zsh)"
fi

echo "zsh setup complete. Restart your terminal to apply changes."
