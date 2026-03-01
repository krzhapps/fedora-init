# init.sh

The main entry point for system setup. Run this script to provision the machine.

## What it does

1. **Resolves script directory** — Uses `BASH_SOURCE` to find its own location, so it works correctly regardless of where it is called from.
2. **Runs software installers** — Calls each script in `Software/` in order:
   - `Software/tailscale.sh` — installs Tailscale
   - `Software/git.sh` — configures global Git settings
   - `Software/chrome.sh` — installs Google Chrome

## Usage

```bash
bash ~/Setup/init.sh
```

## Extending

To add a new setup step, create a script in `Software/` and add a corresponding call in `init.sh`:

```bash
bash "$SCRIPT_DIR/Software/your-script.sh"
```

Scripts must be executable before they can be run. Set the permission with:

```bash
chmod +x Software/your-script.sh
```
