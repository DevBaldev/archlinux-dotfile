#!/usr/bin/env bash

# Update the system
sudo pacman -Syu

# Install base development tools
sudo pacman -S --needed git base-devel

# Create directory for yay and clone the repository
mkdir -p ~/.config/yay
git clone https://aur.archlinux.org/yay.git ~/.config/yay

# Change directory to ~/.config/yay and build yay
(
  cd ~/.config/yay || {
    echo "Failed to change directory to ~/.config/yay"
    exit 1
  }
  makepkg -si
  echo "Current directory after building yay: $(pwd)"
)

# Return to the repository directory
cd "$REPO_DIR" || {
  echo "Failed to change directory to $REPO_DIR"
  exit 1
}
echo "Current directory: $(pwd)"

# List of packages to install
PACKAGE_TO_INSTALL=(
  # Fonts
  "noto-fonts"
  "noto-fonts-cjk"
  "noto-fonts-emoji"
  "noto-fonts-extra"
  "ttf-cascadia-code-nerd"
  # Fish
  "fish"
  "starship"
  "lsd"
  "zoxide"
)

# Installing packages
for PKG in "${PACKAGE_TO_INSTALL[@]}"; do
  echo "Installing $PKG"
  yay -S --needed "$PKG"
done
