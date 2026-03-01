#!/usr/bin/env bash
# Switch to workspace 3 (index 2), then open Obsidian
gdbus call --session \
  --dest org.gnome.Shell \
  --object-path /org/gnome/Shell \
  --method org.gnome.Shell.Eval \
  "global.workspace_manager.get_workspace_by_index(2).activate(global.get_current_time())"
flatpak run md.obsidian.Obsidian &
