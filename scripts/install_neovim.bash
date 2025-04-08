#!/usr/bin/env bash

# List of packages to install
PACKAGE_TO_INSTALL=(
  "neovim"
  "shfmt"
  "stylua"
  "yapf"
  "lua-language-server"
  "bash-language-server"
  "clang"
  "pyright"
)

# Installing packages
for PKG in "${PACKAGE_TO_INSTALL[@]}"; do
  echo "Installing $PKG"
  yay -S --needed "$PKG"
done

# Create directory for neovim and clone the repository
mkdir -p ~/.config/nvim
if git clone https://github.com/DevBaldev/nvim.git ~/.config/nvim; then
  echo "Successfully cloned neovim configuration"
else
  echo "Failed to clone neovim configuration"
  exit 1
fi
