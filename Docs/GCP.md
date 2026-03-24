# gcp.sh

Installs the Google Cloud CLI (`gcloud`) on Fedora and runs initial authentication setup.

## Steps

1. **Add repository** — Writes the official Google Cloud SDK repo config to `/etc/yum.repos.d/google-cloud-sdk.repo`.
2. **Install package** — Installs `google-cloud-cli` via `dnf`.
3. **Initialize** — Runs `gcloud init` interactively to authenticate and set a default project and region.

## Post-install

The `gcloud init` step is interactive. It will prompt you to:

- Log in via a browser-based OAuth flow
- Select or create a GCP project
- Set a default compute region and zone

To verify the active account and project after setup:

```bash
gcloud auth list
gcloud config list
```

To add additional accounts or switch projects later:

```bash
gcloud auth login
gcloud config set project PROJECT_ID
```
