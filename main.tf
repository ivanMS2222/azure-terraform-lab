# This file orchestrates the Terraform modules for deploying Azure infrastructure.

provider "azurerm" {
  features {}
}

# Load sensitive variables from terraform.tfvars
variable "resource_group_name" {}
variable "location" {}

# Create the resource group
resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

# Network module
module "network" {
  source              = "./modules/network"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  vnet_name           = "my-vnet"
  subnet_name         = "my-subnet"
  address_space       = ["10.0.0.0/16"]
  subnet_prefix       = "10.0.1.0/24"
}

# Virtual Machine module
module "vm" {
  source              = "./modules/vm"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  subnet_id           = module.network.subnet_id
  vm_name             = "my-vm"
  admin_username      = "azureuser"
  admin_password      = "P@ssword1234!" 
}

