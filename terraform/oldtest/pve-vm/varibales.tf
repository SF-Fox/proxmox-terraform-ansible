variable "target_node" {
  default = "proxmox"
}

variable "os_template_id" {
  default = "debian-bullseye-cloudinit-latest-tpl"
}

variable "ssh_key" {
  default   = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIPlSa8AESrOTf/65JqOjKf8hV6qTPceLvBIIktylotrz fox@FoxDebian"
  sensitive = true
}

variable "hostname" {
  default = "lxc-terraform-created-01"
}

variable "cores" {
  default = 2
}

variable "memory" {
  default = 2048
}

variable "password" {
  default = "secure123$"
}

variable "firewall" {
  default = false
}

variable "vmid" {
  default = "200"
}

variable "pool" {
  default = "terraform"
}

variable "unprivileged" {
  default = true
}

variable "storage" {
  default = "local"
  type    = string
}


variable "storage_size" {
  default = "10G"
}

variable "pm_api_url" {
}

variable "pm_user" {
}

variable "pm_password" {
  sensitive = true
}

variable "target_lan" {
  default = "130.136.3"
}
variable "target_gw" {
  default = "130.136.3.254"
}

variable "target_br" {
    default = "vmbr0"
}
