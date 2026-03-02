# Keyboard Shortcuts

Configures GNOME custom keybindings via `gsettings`.

## Shortcuts

### Custom Keybindings

| Binding   | Action        | Command         |
|-----------|---------------|-----------------|
| SUPER + T | Open Terminal | `alacritty`     |
| SUPER + B | Open Chrome   | `google-chrome` |
| SUPER + O | Open Obsidian   | `xdotool set_desktop 3 & flatpak run md.obsidian.Obsidian` |
| SUPER + M | Open Spotify    | `open-spotify`  |

### Window Manager Keybindings

| Binding                | Action                            |
|------------------------|-----------------------------------|
| SUPER + W              | Close current window              |
| SUPER + 1              | Switch to workspace 1             |
| SUPER + 2              | Switch to workspace 2             |
| SUPER + 3              | Switch to workspace 3             |
| SUPER + 4              | Switch to workspace 4             |
| SUPER + LEFT           | Move to left workspace            |
| SUPER + RIGHT          | Move to right workspace           |
| SUPER + SHIFT + LEFT   | Move current window to left workspace  |
| SUPER + SHIFT + RIGHT  | Move current window to right workspace |

## How It Works

**Custom keybindings** launch arbitrary commands. GNOME stores them under:

```
/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/
```

Each slot (`custom0`, `custom1`, …) has three keys: `name`, `command`, and `binding`.
The script registers the slots and sets all three keys using `gsettings`.

**WM keybindings** are built-in GNOME window manager actions set via:

```
org.gnome.desktop.wm.keybindings
```

> **Note:** Several default bindings conflict with custom shortcuts and are cleared by the script:
> - `org.gnome.settings-daemon.plugins.media-keys rotate-video-lock-static` claims `<Super>O` — reassigned to `XF86RotationLockToggle`.
> - `org.gnome.shell.keybindings toggle-message-tray` claims `<Super>M` — reassigned to `XF86MessengerToggle`.
> - `org.gnome.shell.keybindings switch-to-application-N` claims `<Super>1`–`<Super>9` (app launcher shortcuts) and takes priority over WM bindings — slots 1–4 are cleared.
> - `org.gnome.mutter.keybindings toggle-tiled-left/right` claims `<Super>Left/Right` (window snapping) — both are cleared.

## Adding More Shortcuts

### New custom keybinding

Add a new slot in `Software/shortcuts.sh`:

1. Append `'${CUSTOM_BASE}/customN/'` to the `custom-keybindings` list.
2. Set `name`, `command`, and `binding` for `customN`.

### New WM keybinding

```bash
gsettings set org.gnome.desktop.wm.keybindings <key> "['<Super>x']"
```

Valid modifier syntax: `<Super>`, `<Ctrl>`, `<Alt>`, `<Shift>`.
