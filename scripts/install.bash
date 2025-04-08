#!/usr/bin/env bash

# Directory of the repository
REPO_DIR="$(pwd)"

# Installing packages
if [ -e "$REPO_DIR/scripts/install_packages.bash" ]; then
  bash $REPO_DIR/scripts/install_packages.bash
fi

# Installing neovim
if [ -e "$REPO_DIR/scripts/install_neovim.bash" ]; then
  bash $REPO_DIR/scripts/install_neovim.bash
fi

# Installing hyprland
if [ -e "$REPO_DIR/scripts/install_hyprland.bash" ]; then
  bash $REPO_DIR/scripts/install_hyprland.bash
fi

# List of files and directories to install
FILES_TO_INSTALL=(
  ".bashrc"
  ".profile"
  ".bash_profile"
  ".config"
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
