variable "location" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "subnet_id" {
  type = string
}

variable "vm_name_prefix" {
  type = string
}

variable "vm_size" {
  type = string
}

variable "admin_username" {
  type = string
}

variable "ssh_public_key_path" {
  type = string
}

variable "disk_size_gb" {
  type = number
}

variable "os" {
  type = object({
    publisher = string
    offer     = string
    sku       = string
    version   = string
  })
}

variable "instance_count" {
  type    = number
  default = 1
}

variable "tags" {
  type = map(string)
}