#!/usr/bin/env bash

# List of packages to install
PACKAGE_TO_INSTALL=(
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
