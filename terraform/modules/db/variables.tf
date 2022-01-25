variable public_key_path {
  description = "Path to the public key used for ssh access"
  default     = "~/.ssh/ubuntu.pub"
}

variable private_key_path {
  description = "Path to the private key used for ssh access"
  default     = "~/.ssh/ubuntu"
}

variable db_disk_image {
  description = "Disk image for reddit db"
  default     = "reddit-db-base"
}

variable subnet_id {
  description = "Subnet"
}
