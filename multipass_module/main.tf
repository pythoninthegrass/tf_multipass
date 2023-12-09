resource "multipass_instance" "multipass_vm" {
  count  = var.instance_count
  cloudinit_file  = var.user_data
  name   = "${var.name_prefix}-${var.name}-${count.index + 1}"
  cpus   = var.cpus
  memory = var.memory
  disk   = var.disks
  image  = var.image_name

  connection {
    type     = "ssh"
    host     = var.host
    user     = var.user
    password = var.password
    private_key = var.private_key
  }
}
