# AI Tools

## ai.sh

Installs the [Claude Code CLI](https://claude.ai/code) and [GitHub Copilot CLI](https://github.com/github/gh-copilot).

### Steps

1. **Claude Code** — Skips if `claude` is already on `$PATH`, otherwise runs the official installer from `claude.ai/install.sh`.
2. **GitHub Copilot** — Skips if the `copilot` gh extension is already installed, otherwise runs the official installer from `gh.io/copilot-install`.

> Copilot requires `gh` to be installed and authenticated first. `gh.sh` runs earlier in `init.sh` so this is satisfied automatically.

### Post-install

```bash
claude              # prompts Anthropic login on first run
gh copilot suggest "how do I list open ports"
```

### Verify

```bash
claude --version
gh copilot --version
```
