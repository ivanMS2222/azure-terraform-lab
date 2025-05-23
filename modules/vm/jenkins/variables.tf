variable "location" {}
variable "resource_group_name" {}
variable "subnet_id" {}
variable "vm_name" {}
variable "vm_size" {}
variable "admin_username" {}
variable "ssh_public_key_path" {}
variable "disk_size_gb" {}
variable "os" {
  type = object({
    publisher = string
    offer     = string
    sku       = string
    version   = string
  })
}
variable "tags" {
  type = map(string)
}
