module "ubuntu" {
  source       = "./pve-vm"
  vmid         = "93"
  hostname     = "bullseye"
  cores        = 2
  memory       = 512
  target_br    = "vmbr0"
  target_node  = "gamora"
  storage      = "Chepsdisk"
  pool         = "terraform"

  pm_api_url   = var.pm_api_url
  pm_user      = var.pm_user
  pm_password  = var.pm_password
}
