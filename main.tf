// Configure the required provider
provider "azurerm" {
  features {}
}

// Create the resource group
resource "azurerm_resource_group" "main" {
  name     = var.resource_group_name
  location = var.location
}

// Create the virtual network and subnet using the network module
module "network" {
  source              = "./modules/network"
  resource_group_name = azurerm_resource_group.main.name
  location            = var.location
  vnet_name           = var.vnet_name
  address_space       = var.address_space
  subnet_name         = var.subnet_name
  subnet_prefix       = var.subnet_prefix
}

// Create a Network Security Group using the NSG module
module "nsg" {
  source              = "./modules/nsg"
  resource_group_name = azurerm_resource_group.main.name
  location            = var.location
  nsg_name            = var.nsg_name
}

// Create a Virtual Machine using the VM module
module "vm" {
  source              = "./modules/vm"
  resource_group_name = azurerm_resource_group.main.name
  location            = var.location
  vm_name             = var.vm_name
  admin_username      = var.admin_username
  admin_password      = var.admin_password
  subnet_id           = module.network.subnet_id
  nsg_id              = module.nsg.nsg_id
}

// Create a storage account using the storage module
module "storage" {
  source              = "./modules/storage"
  resource_group_name = azurerm_resource_group.main.name
  location            = var.location
  storage_account_name = var.storage_account_name
  container_name      = var.container_name
}
