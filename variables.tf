# dot_env: https://stackoverflow.com/a/76194380/15454191
locals {
  dot_env_file_path = "./.env"
  dot_env_regex     = "(?m:^\\s*([^#\\s]\\S*)\\s*=\\s*[\"']?(.*[^\"'\\s])[\"']?\\s*$)"
  dot_env           = { for tuple in regexall(local.dot_env_regex, file(local.dot_env_file_path)) : tuple[0] => sensitive(tuple[1]) }
  user              = local.dot_env["USER_NAME"]
  password          = local.dot_env["USER_PASS"]
  host              = local.dot_env["HOST"]
  private_key       = local.dot_env["PRIV_KEY"]
}

variable "user_data" {
  description = "cloudinit_file that contains bootstrap provision commands"
  type        = string
  default     = "./cloud-init.yml"
}

variable "name" {
  description = "Name of the VM your creating"
  type        = string
  default     = "testvm"
}

variable "name_prefix" {
  description = "Instance name prefix"
  type        = string
  default     = "instance"
}

variable "image_name" {
  description = "ubuntu image name default jammy Lts"
  type        = string
  default     = "jammy"
}

variable "cpus" {
  description = "virtual cpu count"
  type        = number
  default     = 2
}

variable "memory" {
  description = "virtual Vm memory allocation"
  type        = string
  default     = "2G"
}

variable "disks" {
  description = "Thin provisioned disk size"
  type        = string
  default     = "10G"
}

variable "instance_count" {
  description = "Number of instances to create"
  type        = number
  default     = 3
}
