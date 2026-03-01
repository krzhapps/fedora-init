#!/usr/bin/env bash
set -euo pipefail

echo "==> Installing Terraform..."

# Add the official HashiCorp repository for Fedora
sudo dnf config-manager addrepo \
    --from-repofile=https://rpm.releases.hashicorp.com/fedora/hashicorp.repo \
    --overwrite

sudo dnf install -y terraform

echo "==> Terraform installed. Run 'terraform version' to verify."
