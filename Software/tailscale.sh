#!/usr/bin/env bash
set -euo pipefail

echo "==> Installing Tailscale..."

# Add the official Tailscale repository and install
sudo dnf config-manager addrepo \
  --from-repofile=https://pkgs.tailscale.com/stable/fedora/tailscale.repo \
  --overwrite

sudo dnf install -y tailscale

# Enable and start the daemon
sudo systemctl enable --now tailscaled

# Enable SSH management by tailscale
sudo tailscale set --ssh

echo "==> Tailscale installed. Run 'sudo tailscale up' to authenticate."
