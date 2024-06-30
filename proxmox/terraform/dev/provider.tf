terraform {
  required_providers {
    proxmox = {
        source = "bpg/proxmox"
        version = "0.59.1"
    }
  }
}

provider "proxmox" {
  # Configuration Proxmox VE
  endpoint = var.proxmox_api_url
  username = var.proxmox_username
  password = var.proxmox_password
  insecure = true

  ssh {
    agent = true
  }
}
