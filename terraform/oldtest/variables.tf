variable "pm_api_url" {
  default = "https://130.136.3.4:8006/api2/json"
}

variable "pm_user" {
  default = "root@pam"
}

variable "pm_password" {
  default   = ""
  sensitive = true
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
