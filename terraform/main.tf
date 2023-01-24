terraform {                                                        
  required_providers {
    proxmox = {                  
       source  = "telmate/proxmox"
       version = "2.9.6"
    }
   }                     
 } 

provider "proxmox" {                                               
  pm_tls_insecure   = true  
  pm_api_url        = "https://localhost:8006/api2/json"
  pm_password       = var.pm_password
  pm_user           = var.pm_user 
}          
####### DNS
resource "proxmox_vm_qemu" "dns" {
    name        = "dns"
    target_node = "pve1"
    clone = "debian-bullseye-cloudinit-latest" #nome template clone
    os_type     = "cloud-init"
    vmid        = "10${var.ip-dns}" #id macchina dentro proxmox
    onboot      = true
    full_clone  = true
    memory      = 512
    cores       = 1
    ipconfig0   = "ip=${var.target_lan}.${var.ip-dns}/24,gw=${var.target_gw}"
}

####### PROXY
resource "proxmox_vm_qemu" "proxy" { ### www nome che chiama terraform
    name        = "proxy" #nome dentro proxmox
    target_node = "pve2"
    clone = "debian-bullseye-cloudinit-latest" #nome template clone
    os_type     = "cloud-init"
    vmid        = "10${var.ip-proxy}" #id macchina dentro proxmox
    onboot      = true
    bootdisk	= "ide0"
    full_clone  = true
    memory      = 512
    cores       = 1
    ipconfig0   = "ip=${var.target_lan}.${var.ip-proxy}/24,gw=${var.target_gw}"
#disk {
#    slot    = 0                                                 
#    size    = "50G"                                             
#    type    = "ide"                                           
#    storage = "Cephdisk" 
#  }                         
}

####### VAULT
resource "proxmox_vm_qemu" "vault" {
    name        = "vault"
    target_node = "pve1"
    clone = "debian-bullseye-cloudinit-latest" #nome template clone
    os_type     = "cloud-init"
    vmid        = "10${var.ip-vault}" #id macchina dentro proxmox
    onboot      = true
    full_clone  = true
    memory      = 1024
    cores       = 1
    ipconfig0   = "ip=${var.target_lan}.${var.ip-vault}/24,gw=${var.target_gw}"
}

######## AUTH
resource "proxmox_vm_qemu" "auth" {
    name        = "auth"
    target_node = "pve1"
    clone = "debian-bullseye-cloudinit-latest" #nome template clone
    os_type     = "cloud-init"
    vmid        = "10${var.ip-auth}" #id macchina dentro proxmox
    onboot      = true
    full_clone  = true
    memory      = 512
    cores       = 1
    ipconfig0   = "ip=${var.target_lan}.${var.ip-auth}/24,gw=${var.target_gw}"
}


######## NETBOX	
resource "proxmox_vm_qemu" "netbox" {
    name        = "netbox"
    target_node = "pve1"
    clone = "debian-bullseye-cloudinit-latest" #nome template clone
    os_type     = "cloud-init"
    vmid        = "10${var.ip-netbox}" #id macchina dentro proxmox
    onboot      = true
    full_clone  = true
    memory      = 1024
    cores       = 1
    ipconfig0   = "ip=${var.target_lan}.${var.ip-netbox}/24,gw=${var.target_gw}"
}
####### DHCP
resource "proxmox_vm_qemu" "dhcp" {
    name        = "dhcp"
    target_node = "pve1"
    clone = "debian-bullseye-cloudinit-latest" #nome template clone
    os_type     = "cloud-init"
    vmid        = "10${var.ip-dhcp}" #id macchina dentro proxmox
    onboot      = true
    full_clone  = true
    memory      = 512
    cores       = 1
    ipconfig0   = "ip=${var.target_lan}.${var.ip-dhcp}/24,gw=${var.target_gw}"
}

  
