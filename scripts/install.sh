
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

-- Clipboard Utilities
sudo pacman -S wl-clipboard

-- Rust
sudo pacman -S rustup
