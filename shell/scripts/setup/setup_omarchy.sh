#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'

#------------------------------------------------
# Script: setup_omarchy.sh
# Purpose: Setup a fresh Omarchy install with personal preferences
# Usage: ./setup_omarchy.sh
#------------------------------------------------

# Get the directory of the script
BASE_SETUP_DIR="/home/drinfinite/shell/scripts/setup"

# Log function for clarity
log() {
    echo -e "[INFO] $*"
}

# Error function for consistent error messages
error_exit() {
    echo -e "[ERROR] $*" >&2
    exit 1
}

# Verify base directory exists
if [[ ! -d "$BASE_SETUP_DIR" ]]; then
    error_exit "Base setup directory not found: $BASE_SETUP_DIR"
fi

# List of setup scripts to run
setup_scripts=(
    "setup_locale.sh"
    "setup_firmware.sh"
    "setup_zsh.sh"
    "setup_programs.sh"
)

# Run each setup script
for script in "${setup_scripts[@]}"; do
    full_path="${BASE_SETUP_DIR}/${script}"

    if [[ -f "$full_path" ]]; then
        log "Running ${script}..."
        bash "$full_path"
    else
        error_exit "Script not found: ${full_path}"
    fi
done

log "Omarchy setup complete."
