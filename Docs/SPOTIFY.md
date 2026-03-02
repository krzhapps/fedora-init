# spotify.sh

Installs Spotify (music) on Fedora via Flatpak from Flathub.

## Steps

1. **Register Flathub remote** — Adds the Flathub Flatpak repository if it is not already present (`--if-not-exists` makes this safe to run repeatedly).
2. **Install Spotify** — Installs `md.obsidian.Spotify` from Flathub. This is the official distribution channel recommended by Spotify and receives automatic updates through `flatpak update` or GNOME Software.

## Post-install

Launch Spotify from the application menu or from the terminal:

```bash
flatpak run md.obsidian.Spotify
```

Update Spotify (along with all other Flatpak apps) with:

```bash
flatpak update
```

## Why Flatpak

Spotify does not publish an RPM or a Fedora COPR package. The two official options are the AppImage and the Flatpak. Flatpak is preferred here because it integrates with the desktop (application menu entry, file associations), is sandboxed by default, and updates automatically through the standard Flatpak tooling.
