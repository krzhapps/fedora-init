#!/usr/bin/env bash
set -euo pipefail

echo "==> Installing uv..."

curl -LsSf https://astral.sh/uv/install.sh | sh

echo "==> Installing ruff..."

curl -LsSf https://astral.sh/ruff/install.sh | sh

echo "==> uv and ruff installed. Restart your shell or source your profile to use them."
