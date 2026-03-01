#!/usr/bin/env bash
set -euo pipefail

echo "==> Installing GitHub CLI (gh)..."

# Add the official GitHub CLI repository for Fedora
sudo dnf config-manager addrepo \
    --from-repofile=https://cli.github.com/packages/rpm/gh-cli.repo \
    --overwrite

sudo dnf install -y gh

echo "==> GitHub CLI installed. Run 'gh auth login' to authenticate."
