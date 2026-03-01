#!/usr/bin/env bash
set -euo pipefail

echo "==> Configuring keyboard shortcuts..."

CUSTOM_BASE="/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings"

# Register both custom keybinding slots
gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings \
  "['${CUSTOM_BASE}/custom0/', '${CUSTOM_BASE}/custom1/']"

# SUPER+T -> Alacritty
gsettings set "org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:${CUSTOM_BASE}/custom0/" \
  name "Open Terminal"
gsettings set "org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:${CUSTOM_BASE}/custom0/" \
  command "alacritty"
gsettings set "org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:${CUSTOM_BASE}/custom0/" \
  binding "<Super>t"

# SUPER+B -> Google Chrome
gsettings set "org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:${CUSTOM_BASE}/custom1/" \
  name "Open Chrome"
gsettings set "org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:${CUSTOM_BASE}/custom1/" \
  command "google-chrome"
gsettings set "org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:${CUSTOM_BASE}/custom1/" \
  binding "<Super>b"

echo "==> Keyboard shortcuts configured."
