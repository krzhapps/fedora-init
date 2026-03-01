#!/usr/bin/env bash
set -euo pipefail

echo "==> Installing Google Chrome..."

# Install directly from the official RPM — this also registers the Chrome repo for future updates
sudo dnf install -y https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm

echo "==> Google Chrome installed."
