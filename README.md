# Ansible and Terraform on Proxmox Virtual Environment
Ansible create a Cloud-init Template.
Terraform link-clone a new machine.

Gli script presenti nella cartella ansible servono per eliminare un eventuale vecchio template di VM e crearne uno nuovo, scaricando l'immagine di debian-cloudinit e settandola come template.

Gli script presenti nella cartella Terraform servono a creare la lista delle macchine virtuali partendo come base dal template.

