# gh.sh

Installs the GitHub CLI (`gh`) on Fedora.

## Steps

1. **Add repository** — Registers the official GitHub CLI repo for Fedora using `dnf config-manager`.
2. **Install package** — Installs the `gh` package via `dnf`.
3. **Install gh-stack extension** — Installs the official `github/gh-stack` extension for managing stacked pull requests.

## Post-install

Authentication is not handled by the script. After running, authenticate with:

```bash
gh auth login
```

This walks through an interactive flow to connect to GitHub.com or a GitHub Enterprise instance.

Use HTTPS as the git protocol (the preferred choice on this host):

```bash
gh auth login -p https
```

## Stacked PRs (gh-stack)

The `github/gh-stack` extension adds commands for managing stacked pull requests — a chain of PRs where each targets the branch below it.
