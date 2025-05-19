# This file defines the inputs needed to create the NSG

variable "nsg_name" {
  description = "Name of the Network Security Group"
  type        = string
}

variable "resource_group_name" {
  description = "Resource group to deploy the NSG"
  type        = string
}

variable "location" {
  description = "Azure location"
  type        = string
}

variable "tags" {
  description = "Tags to apply to the NSG"
  type        = map(string)
  default     = {}
}
