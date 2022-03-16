terraform {                                                         
  required_providers {
    proxmox = {                  
       source  = "telmate/proxmox"                                   
       version = "~> 2.6.5"
     }
   }                                                                 
 } 

provider "proxmox" {                                                    
  pm_tls_insecure   = true                                              
  pm_api_url        = "https://localhost:8006/api2/json"                                    
  pm_password       = "smEgrANetHar"                                   
  pm_user           = "root@pam" 
}          
resource "proxmox_vm_qemu" "www" { ### www nome che chiama terraform
    name        = "www" #nome dentro proxmox
    target_node = "pve1"
  
    ### or for a Clone VM operation
    clone = "debian-bullseye-cloudinit-latest-tpl" #nome template clone
  
    os_type     = "cloud-init"
    vmid        = "105" #id macchina dentro proxmox
    onboot      = true
    full_clone  = false
    memory      = 512
    cores       = 1
    ipconfig0   = "gw=130.136.3.254,ip=130.136.3.50/24"

disk {                                                                
    slot    = 0                                                 
    size    = "50G"                                             
    type    = "ide"                                           
    storage = "Cephdisk" 
  }                         
}
