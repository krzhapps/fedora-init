#!/usr/bin/env bash
# Switch to workspace 4 (index 3), then open Spotify
xdotool set_desktop 4
flatpak run com.spotify.Client >>/dev/null 2>&1 &
