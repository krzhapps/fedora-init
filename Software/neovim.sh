#!/usr/bin/env bash
set -euo pipefail

echo "==> Installing Neovim and dependencies..."

sudo dnf install -y neovim ripgrep fd-find
sudo dnf copr enable -y atim/lazygit
sudo dnf install -y lazygit

echo "==> Installing LazyVim..."

NVIM_CONFIG="$HOME/.config/nvim"

if [ -d "$NVIM_CONFIG" ]; then
  echo "==> Existing Neovim config found, backing up to $NVIM_CONFIG.bak"
  mv "$NVIM_CONFIG" "${NVIM_CONFIG}.bak"
fi

git clone https://github.com/LazyVim/starter "$NVIM_CONFIG"
rm -rf "$NVIM_CONFIG/.git"

echo "==> LazyVim installed. Plugins will be downloaded on first launch."
