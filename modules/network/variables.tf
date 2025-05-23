variable "vnet_name" {
  type        = string
  description = "Nombre de la red virtual"
}

variable "vnet_address_space" {
  type        = list(string)
  description = "Espacio de direcciones CIDR para la red virtual"
}

variable "location" {
  type        = string
  description = "Región de Azure donde se desplegará"
}

variable "resource_group_name" {
  type        = string
  description = "Nombre del grupo de recursos"
}

variable "tags" {
  type        = map(string)
  description = "Etiquetas para los recursos"
  default     = {}
}

variable "subnets" {
  type        = map(string)
  description = "Mapa de subredes y sus prefijos CIDR"
}
