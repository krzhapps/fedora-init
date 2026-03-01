#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "==> Installing Alacritty..."

sudo dnf install -y alacritty

echo "==> Installing JetBrainsMono Nerd Font..."

FONT_DIR="$HOME/.local/share/fonts"
mkdir -p "$FONT_DIR"

NERD_FONT_VERSION="3.3.0"
FONT_ARCHIVE="/tmp/JetBrainsMono.tar.xz"
curl -fsSL "https://github.com/ryanoasis/nerd-fonts/releases/download/v${NERD_FONT_VERSION}/JetBrainsMono.tar.xz" \
  -o "$FONT_ARCHIVE"
tar -xf "$FONT_ARCHIVE" -C "$FONT_DIR" --wildcards "*.ttf"
rm "$FONT_ARCHIVE"
fc-cache -f "$FONT_DIR"

echo "==> Configuring Alacritty..."

CONFIG_DIR="$HOME/.config/alacritty"
mkdir -p "$CONFIG_DIR"
cp "$SCRIPT_DIR/../Configs/alacritty.toml" "$CONFIG_DIR/alacritty.toml"

echo "==> Alacritty installed and configured."
