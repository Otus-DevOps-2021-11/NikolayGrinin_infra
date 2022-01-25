variable "public_key_path" {
  description = "Path to the public key used for ssh access"
  default     = "~/.ssh/ubuntu.pub"
}

variable "private_key_path" {
  description = "Path to the private key used for ssh access"
  default     = "~/.ssh/ubuntu"
}

variable "app_disk_image" {
  description = "Disk image for reddit db"
  default     = "reddit-app-base"
}

variable "subnet_id" {
  description = "Subnet"
}

variable "database_url" {
  description = "MongoDB url"
  default     = "127.0.0.1:27017"
}
