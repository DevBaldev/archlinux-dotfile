#!/usr/bin/env bash

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
