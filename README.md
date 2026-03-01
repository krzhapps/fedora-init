# Setup

Fedora Linux system setup automation. Provisions a fresh machine by installing and configuring software automatically. Tested only on Fedora Workstation 43. Feel free to use a starter and modify to your desires.

## Usage

```bash
# Clone and run full setup
git clone https://github.com/krzhalovski/Setup ~/Setup
bash ~/Setup/init.sh

# Run individual scripts
bash ~/Setup/Software/tailscale.sh
bash ~/Setup/Software/git.sh
bash ~/Setup/Software/chrome.sh
bash ~/Setup/Software/alacritty.sh
bash ~/Setup/Software/fedora.sh
bash ~/Setup/Software/shortcuts.sh
bash ~/Setup/Software/gh.sh
```

## What gets installed

| Script | Description | Docs |
|--------|-------------|------|
| `tailscale.sh` | Installs Tailscale VPN | [TAILSCALE.md](Docs/TAILSCALE.md) |
| `git.sh` | Configures global Git settings | [GIT.md](Docs/GIT.md) |
| `chrome.sh` | Installs Google Chrome | [CHROME.md](Docs/CHROME.md) |
| `alacritty.sh` | Installs Alacritty terminal and deploys config | [ALACRITTY.md](Docs/ALACRITTY.md) |
| `fedora.sh` | Fedora-specific configuration | [FEDORA.md](Docs/FEDORA.md) |
| `shortcuts.sh` | Configures system keyboard shortcuts | [SHORTCUTS.md](Docs/SHORTCUTS.md) |
| `gh.sh` | Installs GitHub CLI | [GH.md](Docs/GH.md) |

## Structure

```
Setup/
├── init.sh          # Entry point — runs all scripts in order
├── Software/        # One script per tool
├── Configs/         # Static config files deployed by scripts
│   └── alacritty.toml
└── Docs/            # One doc per script
```

## Requirements

- Fedora / RHEL (scripts use `dnf` and `rpm`)
- `sudo` access (required for `tailscale.sh` and `chrome.sh`)

## Extending

1. Create `Software/your-script.sh` with `set -euo pipefail`
2. Make it executable: `chmod +x Software/your-script.sh`
3. Register it in `init.sh`: `bash "$SCRIPT_DIR/Software/your-script.sh"`
4. If it needs a config file, place it in `Configs/` and reference it via `$SCRIPT_DIR/../Configs/your-config`
5. Optionally add `Docs/YOUR-SCRIPT.md`
