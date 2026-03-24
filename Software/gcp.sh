#!/usr/bin/env bash
set -euo pipefail

echo "==> Installing Google Cloud CLI..."

# Add the official Google Cloud SDK repository
sudo tee /etc/yum.repos.d/google-cloud-sdk.repo >/dev/null <<'EOF'
[google-cloud-sdk]
name=Google Cloud SDK
baseurl=https://packages.cloud.google.com/yum/repos/cloud-sdk-el10-x86_64
enabled=1
gpgcheck=1
repo_gpgcheck=0
gpgkey=https://packages.cloud.google.com/yum/doc/rpm-package-key.gpg
EOF

sudo dnf install -y google-cloud-cli

echo "==> Google Cloud CLI installed. Running 'gcloud init' to authenticate and configure..."

gcloud init

echo "==> gcloud configured. Run 'gcloud auth list' to verify active credentials."
