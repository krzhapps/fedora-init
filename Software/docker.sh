#!/usr/bin/env bash
set -euo pipefail

echo "==> Installing Docker..."

# Add the official Docker repository for Fedora
sudo dnf config-manager addrepo \
    --from-repofile=https://download.docker.com/linux/fedora/docker-ce.repo \
    --overwrite

# Install Docker Engine, CLI, containerd, and the Compose plugin
sudo dnf install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# Enable and start the Docker daemon
sudo systemctl enable --now docker

# Add current user to the docker group to allow running without sudo
sudo usermod -aG docker "$USER"

echo "==> Docker installed. Log out and back in for group membership to take effect."
echo "==> Run 'docker run hello-world' to verify."
