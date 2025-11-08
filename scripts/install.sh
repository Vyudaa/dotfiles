-- System Packages
sudo pacman -S git base-devel neovim


-- Install yay
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ~/ 
rm -rf yay

-- Nix package manageer
sh <(curl --proto '=https' --tlsv1.2 -L https://nixos.org/nix/install) --daemon

-- Browser, Password Manager
yay -S zen-browser-bin bitwarden-bin

-- Terminal
sudo pacman -S ghostty

-- Clipboard Utilities
sudo pacman -S wl-clipboard

-- Rust
sudo pacman -S rustup

-- Fonts
sudo pacman -S ttf-firacode-nerd

-- Hyprland Ecosystem
sudo pacman -S hyprpaper hyprsunset hyprcursor

-- Waybar
sudo pacman -S waybar

-- Language-Servers
sudo pacman -S lua-language-server

-- Formatters
sudo pacman -S stylua 

-- Menu
sudo pacman -S rofi

-- Bluetooth
sudo pacman -S bluez bluez-utils

-- Notifications
sudo pacman -S mako
