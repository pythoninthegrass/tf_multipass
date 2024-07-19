output "instance_count" {
  value = "${var.instance_count}"
}

output "vm_names" {
  value = module.multipass_vm.multipass_instance.multipass_vm[*].name
}

output "image_name" {
  value = "${var.image_name}"
}

output "cpus" {
  value = "${var.cpus}"
}

output "memory" {
  value = "${var.memory}"
}

output "disks" {
  value = "${var.disks}"
}

output "username" {
  value = nonsensitive("${local.username}")
}

output "hostname" {
  value = nonsensitive("${local.hostname}")
}

# Only displays file path, not contents
output "private_key" {
  value = nonsensitive("${local.private_key}")
}
