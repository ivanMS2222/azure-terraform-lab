variable "location" {}
variable "resource_group_name" {}
variable "subnet_id" {}
variable "vm_name" {}
variable "vm_size" {}
variable "admin_username" {}
variable "admin_password" {
  description = "Password for admin user"
  type        = string
  sensitive   = true
}
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
