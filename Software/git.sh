#!/usr/bin/env bash
set -euo pipefail

echo "==> Configuring Git..."

git config --global init.defaultBranch master
git config --global user.email "dkrzhalovski.apps@gmail.com"
git config --global user.name "Danail Krzhalovski"

echo "==> Git configured"
