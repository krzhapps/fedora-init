# tailscale.sh

Installs and enables Tailscale on Fedora.

## Steps

1. **Add repository** — Registers the official Tailscale stable repo for Fedora using `dnf config-manager`.
2. **Install package** — Installs the `tailscale` package via `dnf`.
3. **Enable daemon** — Enables and starts `tailscaled` as a systemd service so it runs on boot.

## Post-install

Authentication is not handled by the script. After running, connect to your Tailscale network with:

```bash
sudo tailscale up
```

This prints a URL to authenticate via the Tailscale web UI.
