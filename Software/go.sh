#!/usr/bin/env bash
set -euo pipefail

echo "==> Installing Go..."

if ! rpm -q golang &>/dev/null; then
  sudo dnf install -y golang
else
  echo "==> golang already installed, skipping."
fi

echo "==> Configuring GOPATH/bin in PATH..."

GOPATH_LINE='export PATH="$PATH:$(go env GOPATH)/bin"'
GUARD_COMMENT='# go tools path'

if ! grep -qF "$GUARD_COMMENT" "$HOME/.bashrc"; then
  printf '\n%s\n%s\n' "$GUARD_COMMENT" "$GOPATH_LINE" >>"$HOME/.bashrc"
  echo "==> Added GOPATH/bin to ~/.bashrc"
else
  echo "==> GOPATH/bin already in ~/.bashrc, skipping."
fi

if [ -f "$HOME/.zshrc" ]; then
  if ! grep -qF "$GUARD_COMMENT" "$HOME/.zshrc"; then
    printf '\n%s\n%s\n' "$GUARD_COMMENT" "$GOPATH_LINE" >>"$HOME/.zshrc"
    echo "==> Added GOPATH/bin to ~/.zshrc"
  else
    echo "==> GOPATH/bin already in ~/.zshrc, skipping."
  fi
fi

echo "==> Installing Go tools..."

export PATH="$PATH:$(go env GOPATH)/bin"

go install github.com/golangci/golangci-lint/v2/cmd/golangci-lint@latest
go install github.com/krzhapps/GithubTickets/cmd/tickets@latest

echo "==> Go installed and configured."
