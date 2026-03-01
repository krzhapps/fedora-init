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

# GNOME WM keybindings
WM="org.gnome.desktop.wm.keybindings"

# SUPER+W: close current window
gsettings set $WM close "['<Super>w']"

# Clear GNOME Shell's app-launching bindings on Super+1..4 — they conflict with
# workspace switching because org.gnome.shell.keybindings takes priority over WM bindings.
SHELL_KBS="org.gnome.shell.keybindings"
gsettings set $SHELL_KBS switch-to-application-1 "[]"
gsettings set $SHELL_KBS switch-to-application-2 "[]"
gsettings set $SHELL_KBS switch-to-application-3 "[]"
gsettings set $SHELL_KBS switch-to-application-4 "[]"

# Clear Mutter's window-tiling bindings on Super+Left/Right — they conflict with
# workspace navigation (toggle-tiled-left/right defaults to <Super>Left/Right).
MUTTER_KBS="org.gnome.mutter.keybindings"
gsettings set $MUTTER_KBS toggle-tiled-left  "[]"
gsettings set $MUTTER_KBS toggle-tiled-right "[]"

# SUPER+1..4: switch to workspace
gsettings set $WM switch-to-workspace-1 "['<Super>1']"
gsettings set $WM switch-to-workspace-2 "['<Super>2']"
gsettings set $WM switch-to-workspace-3 "['<Super>3']"
gsettings set $WM switch-to-workspace-4 "['<Super>4']"

# SUPER+LEFT/RIGHT: navigate workspaces
gsettings set $WM switch-to-workspace-left  "['<Super>Left']"
gsettings set $WM switch-to-workspace-right "['<Super>Right']"

# SUPER+SHIFT+LEFT/RIGHT: move window to adjacent workspace
gsettings set $WM move-to-workspace-left  "['<Super><Shift>Left']"
gsettings set $WM move-to-workspace-right "['<Super><Shift>Right']"

echo "==> Keyboard shortcuts configured."
