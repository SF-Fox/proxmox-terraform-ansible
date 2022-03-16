variable "target_node" {
  default = "proxmox"
}

variable "os_image_id" {
  default = "bk:vztmpl/debian-10-standard_10.5-1_amd64.tar.gz"
}

variable "ssh_key" {
  default   = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCYVWGspW9NMvKPM5XgQOcMvEyHt57yu7aXVLIpZxXqfHtRDrrYxXREKxKfUM4mu3N7V6TkpikzuwGD5IOC9mVzxzrqx8c3ORfXlX+0VIgWr4l5Q3u9vU2QOcWDsO1B7ozlZ96JhafGct6V9Igl90dMmXdO6i0uqP1ksUHLVzadCoxvcix4RZN6vU2BIyAS0rvJtUsuE45IZh+izIIphi0k1fp5XLq+dDC9ZDdHukWfT8rCsqk7hRJC2qUTFoXKpHeqG/OYYjiA8iRV6G+WPP5U3aFn2h8mYpLvsa6d4UrLUdKQIpTMOKr1K75sPUJ7Zccy32boxwEBlExGo826remb"
  sensitive = true
}

variable "hostname" {
  default = "lxc-terraform-created-01"
}

variable "cores" {
  default = 1
}

variable "memory" {
  default = 512
}

variable "password" {
  default = "secure123$"
}

variable "firewall" {
  default = false
}

variable "start" {
  default = true
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

variable "storage_size" {
  default = "8GB"
}

variable "storage" {
  default = "local"
  type    = string
}

variable "pm_api_url" {
}

variable "pm_user" {
}

variable "pm_password" {
  sensitive = true
}

variable "target_lan" {
  default = "192.168.1"
}
variable "target_gw" {
  default = "192.168.1.1"
}

variable "target_br" {
    default = "vmbr0"
}