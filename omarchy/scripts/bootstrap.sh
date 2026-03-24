#!/bin/bash

set -euo pipefail

echo "Updating system..."
sudo pacman -Syu --noconfirm

echo "Installing essential build tools..."
sudo pacman -S --noconfirm git unzip wget curl tar zip base-devel cmake ninja python

echo "Installing pacman packages..."
sudo pacman -S --needed --noconfirm - < pacman.txt

echo "Installing AUR helper..."
if ! command -v yay &> /dev/null; then
  git clone https://aur.archlinux.org/yay.git
  cd yay
  makepkg -si
  cd ..
fi

echo "Installing AUR packages..."
yay -S --needed --noconfirm - < aur.txt

# echo "Removing unwanted packages..."
# if [ -f remove-packages.txt ]; then
#     sudo pacman -Rns --noconfirm - < remove-packages.txt
# fi

echo "Installing Go tools..."
while read tool; do
  go install "$tool"
done < go.txt

echo "Installing Python tools..."
# pip install --user somepackage
xargs -I{} uv tool install {} < uv.txt

echo "Installing Rust tools..."
cat cargo.txt | xargs cargo install

echo "Installing Node.js tools..."
npm install -g $(cat npm.txt)

echo "Running custom curl installs..."
./curl.sh

echo "Installing Android SDK & Platform Tools..."
./android.sh

echo "Setting up stow..."
./stow.sh

echo "Done."