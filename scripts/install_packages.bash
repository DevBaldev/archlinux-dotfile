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
  # Audio
  "pipewire"
  "pipewire-alsa"
  "pipewire-audio"
  "pipewire-jack"
  "pipewire-pulse"
  "wireplumber"
  "pavucontrol"
  # Network
  "networkmanager"
  "nm-connection-editor"
  "networkmanager-openvpn"
  # Bluetooth
  "bluez"
  "bluez-utils"
  # Zathura
  "zathura"
  "zathura-cb"
  "zathura-pdf-mupdf"
  # Screenshot
  "slurp"
  "grim"
  "swappy"
  # Theme
  "kvantum"
  "kvantum-qt5"
  "nwg-look"
  "capitaine-cursors"
  "tela-circle-icon-theme-dracula"
  # Yazi
  "yazi"
  "ffmpeg"
  "p7zip"
  "jq"
  "poppler"
  "fd"
  "ripgrep"
  "fzf"
  "imagemagick"
  "mpv"
  # Media
  "imv"
  "mpv"
  "yt-dlp"
  # aur
  "ani-cli"
  "librewolf-bin"
  "kvantum-theme-catppuccin-git"
  "catppuccin-gtk-theme-mocha-revamped"
)

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

# Installing packages
for PKG in "${PACKAGE_TO_INSTALL[@]}"; do
  echo "Installing $PKG"
  yay -S --needed "$PKG"
done

# Fish shell package installations using Fisher
if type fish >/dev/null 2>&1; then
  echo "Fish shell found, proceeding with Fisher package installations."
  yay -S --needed fisher
  fish -c "
    set -U fish_greeting
    fisher install edc/bass
    fisher install catppuccin/fish
    fish_config theme save 'Catppuccin Mocha'
  "
else
  echo "Fish shell not found, skipping Fisher package installations."
fi

# Enable necessary services
sudo systemctl enable NetworkManager.service
sudo systemctl enable bluetooth.service
