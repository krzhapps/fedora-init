#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CONFIG_DIR="$HOME/.config/alacritty"

cp "$SCRIPT_DIR/../Configs/.tmux.conf" "$CONFIG_DIR/.tmux.conf"
