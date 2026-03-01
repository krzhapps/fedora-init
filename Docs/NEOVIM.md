# neovim.sh

Installs Neovim with the [LazyVim](https://www.lazyvim.org/) distribution on Fedora.

## Steps

1. **Install packages** — Installs `neovim`, `ripgrep`, and `fd-find` via `dnf`.
2. **Enable COPR** — Adds the `atim/lazygit` COPR repository, which is required since `lazygit` is not in the default Fedora repos.
3. **Install lazygit** — Installs `lazygit` from the COPR repo.
4. **Backup existing config** — If `~/.config/nvim` already exists, moves it to `~/.config/nvim.bak`.
5. **Clone LazyVim starter** — Clones the [LazyVim starter template](https://github.com/LazyVim/starter) into `~/.config/nvim` and removes its `.git` directory.

## Post-install

On first launch, LazyVim will automatically download and install all plugins:

```bash
nvim
```

A Nerd Font is required for icons to render correctly. This is handled by `alacritty.sh`, which installs JetBrainsMono Nerd Font.
