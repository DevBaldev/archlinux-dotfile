#!/usr/bin/env bash

# List of packages to install
PACKAGE_TO_INSTALL=(
  "hyprland"
  "kitty"
  "hyprpaper"
  "wofi"
  "btop"
  "hyprpolkitagent"
  "uwsm"
  "dunst"
  "wl-clipboard"
  "cliphist"
  "xdg-desktop-portal-gtk"
  "xdg-desktop-portal-hyprland"
)

# Installing packages
for PKG in "${PACKAGE_TO_INSTALL[@]}"; do
  echo "Installing $PKG"
  yay -S --needed "$PKG"
done

# Enable and start services
SERVICES=(
  "hyprpaper.service"
  "hyprpolkitagent.service"
)

for SERVICE in "${SERVICES[@]}"; do
  echo "Enabling and starting $SERVICE"
  systemctl --user enable --now "$SERVICE" || {
    echo "Failed to enable/start $SERVICE"
    exit 1
  }
done
