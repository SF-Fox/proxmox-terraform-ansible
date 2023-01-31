variable "pm_api_url" {
  default = "https://130.136.3.4:8006/api2/json"
}

variable "pm_user" {
  description = "user@pam in terraform.tfvars"
}
variable "pm_password" {
  description = "userpassword in terraform.tfvars"
}

variable "target_node" {
  default = "proxmox"
}

variable "target_lan" {
  default = "130.136.3"
}

variable "target_gw" {
  default = "130.136.3.254"
}

variable "ip-proxy" {
  default = "11"
}

variable "ip-dns" {
  default = "1"
}

variable "ip-vault" {
  default = "20"
}

variable "ip-auth" {
  default = "21"
}

variable "ip-netbox" {
  default = "22"
}

variable "ip-dhcp" {
  default = "23"
}

variable "ip-matrix" {
  default = "24"
}

