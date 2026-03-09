#!/usr/bin/env bash
set -euo pipefail

echo "==> Installing cmake and clang..."

sudo dnf install -y cmake clang lld ccache ninja

echo "==> cmake and clang installed."
