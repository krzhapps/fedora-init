#!/usr/bin/env bash
set -euo pipefail

echo "==> Configuring GNOME workspaces..."

# Disable dynamic workspaces and fix the count at 4
gsettings set org.gnome.mutter dynamic-workspaces false
gsettings set org.gnome.desktop.wm.preferences num-workspaces 4

echo "==> GNOME workspaces configured."
