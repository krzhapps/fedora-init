# cpp.sh

Installs C++ development tools on Fedora via `dnf`.

## Packages

- **cmake** — Cross-platform build system generator.
- **clang** — C/C++ compiler from the LLVM project.
- **lld** — LLVM linker.
- ccache - To reduce compile times
- ninja - C/C++ Build Tool

## Steps

1. **Install cmake, clang, and lld** — Runs `sudo dnf install -y cmake clang lld`.

## Verify

```bash
cmake --version
clang --version
```
