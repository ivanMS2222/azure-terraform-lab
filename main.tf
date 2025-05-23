terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.50"
    }
  }
  required_version = ">= 1.3.0"
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "main" {
  name     = var.resource_group
  location = var.location
  tags     = var.default_tags
}

module "network" {
  source              = "./modules/network"
  location            = var.location
  resource_group_name = azurerm_resource_group.main.name
  vnet_name           = var.vnet_name
  vnet_address_space  = var.vnet_address_space
  subnets             = var.subnets
  tags                = var.default_tags
}

module "vm_master" {
  source              = "./modules/vm/master"
  location            = var.location
  resource_group_name = azurerm_resource_group.main.name
  subnet_id           = module.network.subnet_ids["master"]
  vm_name             = var.master_vm_name
  vm_size             = var.master_vm_size
  admin_username      = var.master_admin_username
  admin_password      = var.admin_password
  disk_size_gb        = var.master_disk_size_gb
  os                  = var.master_os
  tags                = var.default_tags
}

module "storage" {
  source                = "./modules/storage"
  location              = var.location
  resource_group_name   = azurerm_resource_group.main.name
  storage_account_name  = var.storage_account_name
  tags                  = var.default_tags
}

module "nsg" {
  source              = "./modules/nsg"
  location            = var.location
  resource_group_name = azurerm_resource_group.main.name
  nsg_name            = var.nsg_name
  tags                = var.default_tags
}

module "vm_jenkins" {
  source              = "./modules/vm/jenkins"
  location            = var.location
  resource_group_name = azurerm_resource_group.main.name
  subnet_id           = module.network.subnet_ids["jenkins"]
  vm_name             = var.jenkins_vm_name
  vm_size             = var.jenkins_vm_size
  admin_username      = var.jenkins_admin_username
  admin_password      = var.admin_password
  disk_size_gb        = var.jenkins_disk_size_gb
  os                  = var.jenkins_os
  tags                = var.default_tags
}

module "workers" {
  source              = "./modules/vm/workers"
  location            = var.location
  resource_group_name = azurerm_resource_group.main.name
  subnet_id           = module.network.subnet_ids["workers"]
  vm_name_prefix      = var.workers_vm_name_prefix
  instance_count      = var.workers_instance_count
  vm_size             = var.workers_vm_size
  admin_username      = var.workers_admin_username
  admin_password      = var.admin_password
  disk_size_gb        = var.workers_disk_size_gb
  os                  = var.workers_os
  tags                = var.default_tags
}