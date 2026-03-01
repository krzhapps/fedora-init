#!/usr/bin/env bash
set -euo pipefail

echo "==> Installing Google Chrome..."

# Add the official Google Chrome repository
sudo dnf config-manager addrepo \
    --from-repofile=https://dl.google.com/linux/chrome/rpm/stable/x86_64/google-chrome.repo \
    --overwrite

sudo dnf install -y google-chrome-stable

echo "==> Google Chrome installed."
