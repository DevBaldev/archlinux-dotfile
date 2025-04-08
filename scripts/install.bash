#!/usr/bin/env bash

# Directory of the repository
REPO_DIR="$(pwd)"

# List of files and directories to install
FILES_TO_INSTALL=(
  "./.bashrc"
)

# Backup existing dotfiles and install new ones
for FILE in "${FILES_TO_INSTALL[@]}"; do
  if [ -e "$HOME/$FILE" ]; then
    echo "Backing up existing $FILE to $HOME/$FILE.bak"
    mv "$HOME/$FILE" "$HOME/$FILE.bak"
  fi
  echo "Installing $FILE"
  cp -r "$REPO_DIR/$FILE" "$HOME/$FILE"
done

echo "Installation completed!"
