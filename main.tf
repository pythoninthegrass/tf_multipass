module "multipass_vm" {
  source = "./multipass_module"

  instance_count = var.instance_count
  user_data      = "${path.module}/cloud-init.yml"
  name_prefix    = "tf"
  name           = var.name
  image_name     = var.image_name
  cpus           = var.cpus
  memory         = var.memory
  disks          = var.disks

  host        = var.host
  user        = var.user
  password    = var.password
  private_key = var.private_key
}
