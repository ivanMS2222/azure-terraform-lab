// Azure region for all resources
variable "location" {
  description = "Azure region where resources will be deployed"
  type        = string
  default     = "westeurope"
}

// Name of the resource group
variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
  default     = "rg-myproject"
}

// VM name
variable "vm_name" {
  description = "Name of the virtual machine"
  type        = string
  default     = "my-linux-vm"
}

// Admin username for the VM
variable "admin_username" {
  description = "Admin username for the VM"
  type        = string
  default     = "azureuser"
}

// Admin password for the VM (sensitive)
variable "admin_password" {
  description = "Admin password for the VM"
  type        = string
  sensitive   = true
}
