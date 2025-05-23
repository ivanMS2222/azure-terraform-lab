variable "resource_group" {
  description = "Name of the resource group"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "default_tags" {
  description = "Tags to apply"
  type        = map(string)
}

variable "vnet_name" {
  type = string
}

variable "vnet_address_space" {
  type = list(string)
}

variable "subnets" {
  type = map(string)
}

variable "master_vm_name" {
  type = string
}

variable "master_vm_size" {
  type = string
}

variable "master_admin_username" {
  type = string
}

variable "ssh_public_key_path" {
  type = string
}

variable "master_disk_size_gb" {
  type = number
}

variable "master_os" {
  type = object({
    publisher = string
    offer     = string
    sku       = string
    version   = string
  })
}

variable "storage_account_name" {
  description = "Nombre de la cuenta de almacenamiento"
  type        = string
}

variable "nsg_name" {
  description = "Nombre del Network Security Group"
  type        = string
}

# Variables para Jenkins VM
variable "jenkins_vm_name" {
  description = "Nombre de la máquina virtual Jenkins"
  type        = string
}

variable "jenkins_vm_size" {
  description = "Tamaño de la máquina virtual Jenkins (ej. Standard_DS1_v2)"
  type        = string
}

variable "jenkins_admin_username" {
  description = "Nombre de usuario administrador para la VM Jenkins"
  type        = string
}

variable "jenkins_disk_size_gb" {
  description = "Tamaño del disco en GB para la VM Jenkins"
  type        = number
}

variable "jenkins_os" {
  description = "Imagen del sistema operativo para la VM Jenkins"
  type = object({
    publisher = string
    offer     = string
    sku       = string
    version   = string
  })
}
# Variables para VMs Targets
variable "targets_vm_name_prefix" {
  description = "Prefijo para los nombres de las máquinas virtuales targets"
  type        = string
}

variable "targets_instance_count" {
  description = "Número de instancias para las VMs targets"
  type        = number
}

variable "targets_vm_size" {
  description = "Tamaño de las máquinas virtuales targets"
  type        = string
}

variable "targets_admin_username" {
  description = "Nombre de usuario administrador para las VMs targets"
  type        = string
}

variable "targets_disk_size_gb" {
  description = "Tamaño del disco en GB para las VMs targets"
  type        = number
}

variable "targets_os" {
  description = "Imagen del sistema operativo para las VMs targets"
  type = object({
    publisher = string
    offer     = string
    sku       = string
    version   = string
  })
}