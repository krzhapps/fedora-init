#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

cp "$SCRIPT_DIR/../Configs/.tmux.conf" "$HOME/.tmux.conf"
