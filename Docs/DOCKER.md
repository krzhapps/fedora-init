# docker.sh

Installs Docker Engine and related tools on Fedora.

## Steps

1. **Add repository** — Registers the official Docker repo for Fedora using `dnf config-manager`.
2. **Install packages** — Installs `docker-ce`, `docker-ce-cli`, `containerd.io`, `docker-buildx-plugin`, and `docker-compose-plugin`.
3. **Enable daemon** — Enables and starts `docker` as a systemd service so it runs on boot.
4. **Add user to group** — Adds the current user to the `docker` group to allow running Docker without `sudo`.

## Post-install

Group membership changes require a new login session to take effect:

```bash
newgrp docker
# or log out and back in
```

Verify the install with:

```bash
docker run hello-world
```

Docker Compose is available as a plugin:

```bash
docker compose version
```
