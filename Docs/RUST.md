# rust.sh

Installs [`rustup`](https://rustup.rs), the Rust toolchain installer.

## Steps

1. **Install rustup** — Downloads and runs the official rustup installer from `sh.rustup.rs`.

## Post-install

Restart your shell or run:

```bash
source ~/.cargo/env
```

Verify install:

```bash
rustc --version
cargo --version
```
