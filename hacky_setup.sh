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

