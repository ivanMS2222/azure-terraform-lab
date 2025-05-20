variable "resource_group_name" {
  description = "Nombre del Resource Group"
  type        = string
}

variable "location" {
  description = "Ubicación de los recursos"
  type        = string
  default     = "westeurope"
}

# VM
variable "vm_name" {
  description = "Nombre de la máquina virtual"
  type        = string
}

variable "admin_username" {
  description = "Usuario administrador para la VM"
  type        = string
}

variable "admin_password" {
  description = "Contraseña administrador para la VM"
  type        = string
  sensitive   = true
}

# Network
variable "vnet_name" {
  description = "Nombre de la red virtual"
  type        = string
}

variable "address_space" {
  description = "Espacio de direcciones de la VNet"
  type        = string
}

variable "subnet_name" {
  description = "Nombre de la subred"
  type        = string
}

variable "subnet_prefix" {
  description = "Prefijo de la subred"
  type        = string
}

# NSG
variable "nsg_name" {
  description = "Nombre del Network Security Group"
  type        = string
}

# Storage
variable "storage_account_name" {
  description = "Nombre de la cuenta de almacenamiento"
  type        = string
}

variable "container_name" {
  description = "Nombre del contenedor de blobs"
  type        = string
}
