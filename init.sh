#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "==> Starting system setup..."

bash "$SCRIPT_DIR/Software/tailscale.sh"
bash "$SCRIPT_DIR/Software/git.sh"
bash "$SCRIPT_DIR/Software/chrome.sh"
bash "$SCRIPT_DIR/Software/alacritty.sh"

echo "==> Setup complete."
