#!/usr/bin/env bash
set -euo pipefail

echo "==> Installing Obsidian..."

# Ensure the Flathub remote is registered (safe to run if already present)
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

# Install Obsidian from Flathub
flatpak install -y flathub md.obsidian.Obsidian

echo "==> Obsidian installed. Launch via 'flatpak run md.obsidian.Obsidian' or from the application menu."
