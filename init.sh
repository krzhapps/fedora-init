#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "==> Starting system setup..."

bash "$SCRIPT_DIR/Software/tailscale.sh"
bash "$SCRIPT_DIR/Software/git.sh"
bash "$SCRIPT_DIR/Software/chrome.sh"
bash "$SCRIPT_DIR/Software/alacritty.sh"
bash "$SCRIPT_DIR/Software/shortcuts.sh"
bash "$SCRIPT_DIR/Software/fedora.sh"
bash "$SCRIPT_DIR/Software/gh.sh"
bash "$SCRIPT_DIR/Software/neovim.sh"
bash "$SCRIPT_DIR/Software/terraform.sh"
bash "$SCRIPT_DIR/Software/docker.sh"

echo "==> Setup complete."
