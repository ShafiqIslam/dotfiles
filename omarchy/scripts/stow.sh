#!/usr/bin/env bash
set -euo pipefail

source "$(dirname "${BASH_SOURCE[0]}")/vars.sh"

PACKAGES=(
  bash
  ghostty
  git
  hypr
  hyprmon
  lazysql
  omarchy
  ssh
  starship
  uwsm
  waybar
  yazi
)

for pkg in "${PACKAGES[@]}"; do
  echo "📦 Stowing $pkg"
  stow -d "$DOTFILES_DIR" -t ~ "$pkg"
done