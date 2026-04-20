#!/usr/bin/env bash
set -euo pipefail

echo "==> Installing AI tools..."

if command -v claude &>/dev/null; then
  echo "==> Claude Code CLI already installed, skipping."
else
  curl -fsSL https://claude.ai/install.sh | bash
  echo "==> Claude Code CLI installed."
fi

if gh extension list 2>/dev/null | grep -q "copilot"; then
  echo "==> GitHub Copilot CLI already installed, skipping."
else
  curl -fsSL https://gh.io/copilot-install | bash
  echo "==> GitHub Copilot CLI installed."
fi
