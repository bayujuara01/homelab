

# resource "proxmox_virtual_environment_vm" "srv-dev-1" {
#   node_name = "milkyway"
# 	name = "srv-dev-1"
# 	vm_id = 420010

# 	initialization {
# 		user_account {
# 			username = var.cloud_init_user
# 			password = var.cloud_init_password
# 			keys = [ file(var.cloud_init_ssh_public_key_path) ]
# 		}
# 		ip_config {
# 			ipv4 {
# 				address = "10.10.20.10/24"
# 				gateway = "10.10.20.1"
# 			}
# 		}
# 	}

# 	cpu {
# 		sockets = 1
# 		cores = 4
# 		type = "x86-64-v2-AES"
# 	}

# 	memory {
# 		dedicated = 8192
# 	}

# 	scsi_hardware = "virtio-scsi-single"

# 	disk {
# 		interface = "virtio0"
# 		size = 20
# 		discard = "on"
# 		datastore_id = "local-lvm"
# 		file_id = var.available_vm_image_file_id["debian-12"]
# 	}

# 	network_device {
# 		bridge = "vmbr0"
# 		vlan_id = 20
# 	}

# 	lifecycle {
# 		ignore_changes = [ 
# 			initialization
# 		 ]
# 	}
# }