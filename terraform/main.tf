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

resource "proxmox_vm_qemu" "www" { ### www nome che chiama terraform
    name        = "www" #nome dentro proxmox
    target_node = "pve1"
    clone = "debian-bullseye-cloudinit-latest-tpl" #nome template clone
    os_type     = "cloud-init"
    vmid        = "105" #id macchina dentro proxmox
    onboot      = true
    bootdisk	= "ide0"
    full_clone  = false
    memory      = 512
    cores       = 1
    ipconfig0   = "ip=${var.target_lan}.${var.ip}/24,gw=${var.target_gw}"


disk {
    slot    = 0                                                 
    size    = "50G"                                             
    type    = "ide"                                           
    storage = "Cephdisk" 
  }                         
}
#
#resource "proxmox_vm_qemu" "testone" { ### www nome che chiama terraform
#    name        = "testone" #nome dentro proxmox
#    target_node = "pve1"
#  
#    ### or for a Clone VM operation
#    clone = "debian-bullseye-cloudinit-latest-tpl" #nome template clone
#  
#    os_type     = "cloud-init"
#    vmid        = "106" #id macchina dentro proxmox
#   # bootdisk	= "ide0"
#    onboot      = true
#    full_clone  = false
#    memory      = 512
#    cores       = 1
#    ipconfig0   = "gw=130.136.3.254,ip=130.136.3.51/24"
#
##disk {   
# #   slot    = 0                                                 
#  #  size    = "50G"                                           
#   # type    = "ide"                                           
#    #storage = "Cephdisk" 
#  #}                         
#}
#
#Cephdisk:base-9002-disk-0/vm-105-disk-0
