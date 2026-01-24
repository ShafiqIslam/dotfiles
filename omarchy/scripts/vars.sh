#!/usr/bin/env bash
set -eu

PROJECT_ROOT_DIR="$(git rev-parse --show-toplevel)"
OMARCHY_DIR="$PROJECT_ROOT_DIR/omarchy"
DOTFILES_DIR="$OMARCHY_DIR/dotfiles"