resource "multipass_instance" "multipass_vm" {
  count  = var.instance_count
  cloudinit_file  = var.user_data
  name   = "${var.name_prefix}-${var.name}-${count.index + 1}"
  cpus   = var.cpus
  memory = var.memory
  disk   = var.disks
  image  = var.image_name

  connection {
    type        = "ssh"
    user        = var.username
    host        = var.hostname
    private_key = "${file(var.private_key)}"
  }

  provisioner "remote-exec" {
    inline = ["echo 'Hello, World!'"]
  }
}
