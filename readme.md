# ArchLinux Dotfiles

This repository contains my personal dotfiles for Arch Linux, designed to create a minimal and efficient development environment.

## What's Included

- Configurations for:
  - **Shell**: [Fish-shell](https://github.com/fish-shell/fish-shell)
  - **Text Editor**: [Neovim](https://github.com/neovim/neovim)
  - **Window Manager**: [Hyprland](https://github.com/hyprwm/Hyprland)
  - **Terminal Emulator**: [Kitty](https://github.com/kovidgoyal/kitty)
  - **App Launcher**: [Wofi](https://hg.sr.ht/~scoopta/wofi)
  - **Document Viewer**: [Zathura](https://github.com/pwmt/zathura)
  - **Screenshot Tool**: [Swappy](https://github.com/jtheoof/swappy)
  - **Terminal File Viewer**: [Yazi](https://github.com/sxyazi/yazi)
  - **Other Tools**: Essential utilities and scripts

## Setup Instructions

1. **Clone the repository**:
   ```bash
   git clone https://github.com/DevBaldev/archlinux-dotfile.git
   cd archlinux-dotfile
   ```

2. **Backup your existing dotfiles**:
   Use the provided script to back up your current dotfiles:
   ```bash
   ./scripts/backup.bash
   ```

3. **Install the dotfiles**:
   Run the installation script to symlink the dotfiles to your home directory:
   ```bash
   ./scripts/install.bash
   ```

4. **Reload your environment**:
   Restart your shell or reload configurations:
   ```bash
   exec fish
   ```

## Customization

Feel free to edit any file in this repository to match your specific preferences. Contributions are welcome! If you have ideas to enhance these configurations, feel free to submit a pull request.

## Feedback & Support

If you encounter any issues or have suggestions for improvement, please [open an issue](https://github.com/DevBaldev/archlinux-dotfile/issues).

## License

This repository is licensed under the [MIT License](LICENSE).

---
*Enjoy a streamlined and productive Arch Linux experience!*
