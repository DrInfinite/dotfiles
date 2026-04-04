#!/usr/bin/env bash

set -euo pipefail

# Paths
PROFILES_INI="$HOME/.config/mozilla/firefox/profiles.ini"
FIREFOX_DIR="$HOME/.config/mozilla/firefox"
STOW_SOURCE="$HOME/dotfiles/browser"

# Files to stow
# FILES=(
#   "prefsCleaner.sh"
#   "updater.sh"
#   "user-overrides.js"
#   "user.js"
# )

# Check dependencies
if ! command -v stow >/dev/null 2>&1; then
  echo "Error: GNU stow is not installed."
  exit 1
fi

if [[ ! -f "$PROFILES_INI" ]]; then
  echo "Error: profiles.ini not found at $PROFILES_INI"
  exit 1
fi

# Extract profile paths
mapfile -t PROFILE_PATHS < <(grep -E '^Path=' "$PROFILES_INI" | cut -d'=' -f2)

if [[ ${#PROFILE_PATHS[@]} -eq 0 ]]; then
  echo "No profiles found."
  exit 1
fi

echo "Found profiles:"
printf ' - %s\n' "${PROFILE_PATHS[@]}"
echo

# Loop through profiles
for profile in "${PROFILE_PATHS[@]}"; do
  TARGET_DIR="$FIREFOX_DIR/$profile"

  if [[ ! -d "$TARGET_DIR" ]]; then
    echo "Skipping missing directory: $TARGET_DIR"
    continue
  fi

  echo "Processing profile: $profile"

  for file in "${FILES[@]}"; do
    # Use stow to create symlink for each file
    stow --dir="$STOW_SOURCE" \
      --target="$TARGET_DIR" \
      firefox
  done

  echo "Done: $profile"
  echo
done

echo "All profiles processed."
