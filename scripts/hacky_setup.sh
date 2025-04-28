#!/usr/bin/env bash

print_logo() {
  cat << "EOF"

   _                _
  | |__   __ _  ___| | ___   _ 
  | '_ \ / _` |/ __| |/ / | | |
  | | | | (_| | (__|   <| |_| |   Arch Linux
  |_| |_|\__,_|\___|_|\_\\__, |   by: Hacky the Sheep
                         |___/ 

EOF
}

# Clear screen / show logo
clear
print_logo

# Exit on error
set -e

# ?? Utils ??
source utils.sh

# Source the package list
if [ ! -f "packages.conf" ]; then
  echo "Error: packages.conf not found!"
  exit 1
fi

source packages.conf

echo "So it begins..."

# Update Arch
echo "Updating Arch:"
sudo pacman -Syu --noconfirm

# Install Yay
if ! command -v yay &> /dev/null; then
  echo "Installing yay AUR helper..."
  sudo pacman -S --needed git base-devel --noconfirm
  git clone https://aur.archlinux.org/yay.git
  cd yay
  echo "building light yay baybeh"
  makepkg -si --noconfirm
  cd ..
  rm -rf yay
else
  echo "yay is already installed"
fi

# Install packages by category
echo "Installing rice..."
install_packages "${ricing[@]}"

echo "Installing terminal tools..."
install_packages "${terminal[@]}"

echo "Installing guh-nome stuff..."
install_packages "${gnome[@]}"

echo "Installing programming tools..."
install_packages "${programming[@]}"

echo "Installing general environment..."
install_packages "${general[@]}"

echo "Hello Friend..."
install_packages "${robot[@]}"

# Set the git stuff
echo "   "
echo "   "
echo "Setting Git Defaults"
git config --global user.name "Hacky"
git config --global user.email "jon.nguyen7@protonmail.com"

# Generate the SSH Keys
echo " "
echo "Generating the SSH Key"
yes "" | ssh-keygen -t ed25519 -C "jon.nguyen7@protonmail.com"

# Nix Time
if gentent group "nix-users" &>/dev/null; then
  echo "The Nix-Users group exists already... moving on"
else
  echo "Making the 'Nix-Users' group"
  sudo groupadd nix-users
  echo "Adding the nix pkg channel"
  nix-channel --add https://nixos.org/channels/nixpkgs-unstable
  nix-channel --update
  sudo systemctl enable nix-daemon.service
fi

echo "SETUP Finished! Please reboot your PC"
