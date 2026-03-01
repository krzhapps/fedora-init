# alacritty.sh

Installs and configures the Alacritty terminal emulator, styled after Omarchy.

## Steps

1. **Install Alacritty** — Installs `alacritty` via `dnf` from Fedora's official repositories.

2. **Install JetBrainsMono Nerd Font** — Downloads the font archive from the [nerd-fonts GitHub releases](https://github.com/ryanoasis/nerd-fonts/releases) (v3.3.0), extracts the TTF files to `~/.local/share/fonts/`, and rebuilds the font cache with `fc-cache`.

3. **Write config** — Creates `~/.config/alacritty/alacritty.toml` with:

| Setting | Value |
|---------|-------|
| Font | JetBrainsMono Nerd Font, size 9 |
| Window padding | 14px on all sides |
| Decorations | None (borderless) |
| `$TERM` | `xterm-256color` |
| OSC 52 clipboard | CopyPaste |
| Copy keybind | `Ctrl+Insert` |
| Paste keybind | `Shift+Insert` |
| Color scheme | Gruvbox |

## Usage

Run directly or via `init.sh`:

```bash
bash ~/Setup/Software/alacritty.sh
```
