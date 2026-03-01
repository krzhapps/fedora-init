# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Purpose

This is a Fedora Linux system setup automation repository. It provisions a fresh machine by installing and configuring software automatically

## Running Setup

```bash
# Full setup (runs all scripts in order)
bash ~/Setup/init.sh

# Individual scripts
bash ~/Setup/Software/tailscale.sh
bash ~/Setup/Software/git.sh
bash ~/Setup/Software/chrome.sh
bash ~/Setup/Software/alacritty.sh
...
```

## Architecture

- `init.sh` — Entry point; resolves its own directory via `BASH_SOURCE` and calls each script in `Software/` sequentially with strict error handling (`set -euo pipefail`).
- `Software/` — One script per tool. Each script is self-contained and handles its own installation/configuration.
- `Configs/` — Static config files deployed by scripts (e.g. `alacritty.toml`). Scripts copy from here rather than hardcoding config inline.
- `Docs/` — One markdown doc per script, mirroring the `Software/` structure.

## Extending

Add a new setup step by creating `Software/your-script.sh` and registering it in `init.sh`:

```bash
bash "$SCRIPT_DIR/Software/your-script.sh"
```

If the tool needs a config file, place it in `Configs/` and copy it from the script using `$SCRIPT_DIR/../Configs/your-config`.

All scripts should use `set -euo pipefail` and be executable (`chmod +x`).

## Platform

Fedora/RHEL only — scripts use `dnf` and `rpm`. Two scripts (`tailscale.sh`, `chrome.sh`) require `sudo`.
