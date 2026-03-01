# terraform.sh

Installs Terraform on Fedora using the official HashiCorp RPM repository.

## Steps

1. **Add repository** — Registers the official HashiCorp repo for Fedora using `dnf config-manager`.
2. **Install package** — Installs the `terraform` package via `dnf`.

## Post-install

No additional setup is required to use Terraform locally. Verify the installation with:

```bash
terraform version
```

Cloud provider credentials (AWS, GCP, Azure, etc.) are configured separately, typically via environment variables or provider-specific CLI tools.
