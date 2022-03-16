# More Information
For the used proxmox provider you finde more information in the [documentation][link-proxmox-provider-github] on github.

[//]: # (Links used in the document.)

[link-proxmox-provider-github]: https://github.com/Telmate/terraform-provider-proxmox/blob/master/docs/index.md

## Vars

```hcl
variable "target_node" {
  default = "proxmox"
}

variable "target_lan" {
  default = "192.168.1"
}
variable "target_gw" {
  default = "192.168.1.1"
}
```
Create terraform.tfvars

```hcl
pm_password = "SuperSecretPWD"
```