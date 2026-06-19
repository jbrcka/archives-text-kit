#!/bin/bash
clear
echo "========================================"
echo "    Updating Archives Text Kit          "
echo "========================================"

# Setup exact paths for your repository and local directory
REPO_URL="https://github.com/jbrcka/archives-text-kit/archive/refs/heads/main.zip"
TARGET_DIR="$HOME/Library/Application Support/espanso/match/packages/archives-text-kit"
TEMP_ZIP="/tmp/archives_update.zip"
TEMP_EXTRACTED="/tmp/archives_extracted"

# 1. Ensure the destination folder exists
mkdir -p "$TARGET_DIR"

# 2. Download the ZIP from your repository
echo "Downloading updates from GitHub..."
curl -L -o "$TEMP_ZIP" "$REPO_URL"

# 3. Extract the ZIP file
echo "Extracting updates..."
rm -rf "$TEMP_EXTRACTED"
mkdir -p "$TEMP_EXTRACTED"
unzip -q "$TEMP_ZIP" -d "$TEMP_EXTRACTED"

# 4. Overlay files into the target packages directory
echo "Overlaying files into Espanso..."
# GitHub packages the zip inside a folder named "archives-text-kit-main"
cp -R "$TEMP_EXTRACTED/archives-text-kit-main/"* "$TARGET_DIR/"

# 5. Clean up temporary files
echo "Cleaning up temporary files..."
rm "$TEMP_ZIP"
rm -rf "$TEMP_EXTRACTED"

# 6. Restart Espanso to load new updates
echo "Restarting Espanso to apply updates..."
espanso restart

echo "----------------------------------------"
echo " SUCCESS: archives-text-kit is updated! "
echo "----------------------------------------"

# Keeps window open until user presses Enter
read -p "Press [Enter] to exit..."