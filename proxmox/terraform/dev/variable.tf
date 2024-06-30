# Proxmox Config Variable
variable "proxmox_api_url" {
  type = string
}

variable "proxmox_api_token_id" {
  type = string
}

variable "proxmox_api_token_secret" {
  type = string
  sensitive = true
}

variable "proxmox_username" {
  type = string
  sensitive = true
}

variable "proxmox_password" {
  type = string
  sensitive = true
}

# Proxmox Cloud Init Variable
variable "cloud_init_user" {
  type = string
}

variable "cloud_init_password" {
  type = string
	sensitive = true
}

variable "cloud_init_ssh_public_key_path" {
  type = string
}

variable "cloud_init_ssh_private_key_path" {
	type = string
}

variable "default_node" {
  type = string
  default = "milkyway"
}

# Proxmox VM Image File Variable
variable "available_vm_image_file_id" {
  type = map(string)

  default = {
    "almalinux-9.4" = "local:iso/almalinux-9.4-cloudimg-amd64.img"
    "ubuntu-24.04" = "local:iso/ubuntu-24.04-server-cloudimg-amd64.img"
    "alpine-3.19.1" = "local:iso/alpine-3.19.1-x86_64-bios-cloudinit-r0.img"
    "debian-12" = "local:iso/debian-12-generic-amd64.img"
  }
}

# Proxmox LXC Template Variable
variable "available_lxc_template_file_id" {
  type = map(string)

  default = {
    "alpine-3.18" = "local:vztmpl/alpine-3.18-default_20230607_amd64.tar.xz"
    "almalinux-9" = "local:vztmpl/almalinux-9-default_20221108_amd64.tar.xz"
    "ubuntu-20.04" = "local:vztmpl/ubuntu-20.04-standard_20.04-1_amd64.tar.gz"
  }
}
