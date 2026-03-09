#!/usr/bin/env bash
set -euo pipefail

echo "==> Installing rustup..."

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

echo "==> rustup installed. Restart your shell or source your profile to use it."
