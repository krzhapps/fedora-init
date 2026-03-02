# Fedora Configuration
## Directory setup
Remove Public and Desktop directories and create Projects/Github

## Configuring GNOME
Configures GNOME workspace behaviour via `gsettings`.

## Settings

| Schema                                  | Key                | Value   |
|-----------------------------------------|--------------------|---------|
| `org.gnome.mutter`                      | `dynamic-workspaces` | `false` |
| `org.gnome.desktop.wm.preferences`      | `num-workspaces`   | `4`     |

## How It Works

By default GNOME creates and destroys workspaces dynamically as windows are
opened and closed. The script disables that behaviour and pins the workspace
count to a fixed value of 4.

**`dynamic-workspaces false`** tells Mutter to stop managing the workspace
count automatically.

**`num-workspaces 4`** sets the fixed count. This key is only respected when
`dynamic-workspaces` is `false`.

Both settings take effect immediately — no logout or reboot is required.

## Changing the Workspace Count

Edit `Software/fedora.sh` and update the value passed to `num-workspaces`:

```bash
gsettings set org.gnome.desktop.wm.preferences num-workspaces <count>
```

Valid range: 1–36.

## Reverting to Dynamic Workspaces

```bash
gsettings set org.gnome.mutter dynamic-workspaces true

## Installing `xdotool` for easy window management

xdotool is usefull for selecting workspaces for specific apps
```
