# python.sh

Installs [`uv`](https://github.com/astral-sh/uv) and [`ruff`](https://github.com/astral-sh/ruff) on Fedora.

## Steps

1. **Install uv** — Downloads and runs the official uv installer from `astral.sh`.
2. **Install ruff** — Downloads and runs the official ruff installer from `astral.sh`.

## Post-install

Both tools are installed to `~/.cargo/bin` (or `~/.local/bin` depending on the installer). Restart your shell or run:

```bash
source ~/.bashrc
```

Verify installs:

```bash
uv --version
ruff --version
```
