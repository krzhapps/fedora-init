# Keyboard Shortcuts

Configures GNOME custom keybindings via `gsettings`.

## Shortcuts

| Binding   | Action          | Command         |
|-----------|-----------------|-----------------|
| SUPER + T | Open Terminal   | `alacritty`     |
| SUPER + B | Open Chrome     | `google-chrome` |

## How It Works

GNOME stores custom keybindings under:

```
/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/
```

Each slot (`custom0`, `custom1`, …) has three keys: `name`, `command`, and `binding`.
The script registers the slots and sets all three keys using `gsettings`.

## Adding More Shortcuts

Add a new slot in `Software/shortcuts.sh`:

1. Append `'${CUSTOM_BASE}/customN/'` to the `custom-keybindings` list.
2. Set `name`, `command`, and `binding` for `customN`.

Valid modifier syntax: `<Super>`, `<Ctrl>`, `<Alt>`, `<Shift>`.
