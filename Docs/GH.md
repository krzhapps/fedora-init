# gh.sh

Installs the GitHub CLI (`gh`) on Fedora.

## Steps

1. **Add repository** — Registers the official GitHub CLI repo for Fedora using `dnf config-manager`.
2. **Install package** — Installs the `gh` package via `dnf`.

## Post-install

Authentication is not handled by the script. After running, authenticate with:

```bash
gh auth login
```

This walks through an interactive flow to connect to GitHub.com or a GitHub Enterprise instance.
