# Go

## What It Does

`Software/go.sh` installs the Go toolchain and a set of Go-based developer tools on Fedora.

## Installation

Go is installed via the official Fedora repository using `dnf`:

```bash
sudo dnf install -y golang
```

The script is idempotent — it checks whether the `golang` RPM is already installed before running `dnf`.

## PATH Configuration

After installation the script appends the following block to `~/.bashrc` (and to `~/.zshrc` if the file exists):

```bash
# go tools path
export PATH="$PATH:$(go env GOPATH)/bin"
```

An idempotency guard (`# go tools path`) prevents the block from being added more than once.

## Tools Installed

| Tool | Source |
|---|---|
| `golangci-lint` | `github.com/golangci/golangci-lint/cmd/golangci-lint@latest` |
| `tickets` | `github.com/krzhapps/GithubTickets/cmd/tickets@latest` |

Both tools are installed with `go install` and land in `$(go env GOPATH)/bin`, which is on the PATH after the configuration step above.

## Verification

```bash
go version
golangci-lint --version
tickets --help
```
