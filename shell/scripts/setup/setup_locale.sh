#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'

#------------------------------------------------
# Script: setup_locale.sh
# Purpose: Setup locale en_IN.UTF-8 upon new arch install
# Usage: ./setup_locale.sh
#------------------------------------------------

# Exit on error
set -e

LOCALE="en_IN.UTF-8"
LOCALE_FILE="/etc/locale.gen"

# Check if running as root
if [[ "$EUID" -ne 0 ]]; then
  echo "❌ This script must be run as root (e.g., with sudo)."
  exit 1
fi

# Backup original file
cp "$LOCALE_FILE" "${LOCALE_FILE}.bak"

# Uncomment the line for en_IN.UTF-8 if it's commented
if grep -q "^# *$LOCALE" "$LOCALE_FILE"; then
  sed -i "s/^# *\($LOCALE.*\)/\1/" "$LOCALE_FILE"
  echo "✅ Locale $LOCALE has been enabled in $LOCALE_FILE."
elif grep -q "^$LOCALE" "$LOCALE_FILE"; then
  echo "ℹ️ Locale $LOCALE is already enabled."
else
  echo "⚠️ Locale $LOCALE not found in $LOCALE_FILE. Adding it."
  echo "$LOCALE UTF-8" >> "$LOCALE_FILE"
fi

# Generate the locale
locale-gen "$LOCALE"

echo "✅ Locale generation complete."
