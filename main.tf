module "multipass_vm" {
  source = "./multipass_module"

  instance_count = var.instance_count
  user_data      = "${path.module}/cloud-init.yml"
  name_prefix     = var.name_prefix
  name           = var.name
  image_name     = var.image_name
  cpus           = var.cpus
  memory         = var.memory
  disks          = var.disks
  username       = local.username
  hostname       = local.hostname
  private_key    = local.private_key
}
