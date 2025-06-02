#!/usr/bin/zsh

# Set the target directory
TARGET_DIR="$HOME/Downloads/monaspace"

# Clone the repository
git clone https://github.com/githubnext/monaspace.git "$TARGET_DIR" --depth 1

# Check if clone was successful
if [ $? -ne 0 ]; then
  echo "Failed to clone the repository."
  exit 1
fi

# Run the install script
cd "$TARGET_DIR"
zsh "./util/install_linux.sh"
cd -

# Check if the script ran successfully
if [ $? -ne 0 ]; then
  echo "Installation script failed."
  exit 1
fi

# Remove the cloned directory
rm -rf "$TARGET_DIR"

echo "Monaspace installed and directory cleaned up."
