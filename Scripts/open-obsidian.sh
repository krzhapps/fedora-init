#!/usr/bin/env bash
# Switch to workspace 3 (index 2), then open Obsidian
xdotool set_desktop 3
flatpak run md.obsidian.Obsidian &
