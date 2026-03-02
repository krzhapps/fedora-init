#!/usr/bin/env bash
set -euo pipefail

echo "==> Installing Spotify..."

# Ensure the Flathub remote is registered (safe to run if already present)
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

# Install Spotify from Flathub
flatpak install -y flathub com.spotify.Client

echo "==> Spotify installed. Launch via 'flatpak run com.spotify.Client' or from the application menu."
