resource_group = "rg-lab-ivanms"
location            = "westeurope"
vnet_name           = "vnet-lab"
vnet_address_space  = ["10.0.0.0/16"]

subnets = {
  master  = "10.0.1.0/24"
  workers = "10.0.2.0/24"
  jenkins = "10.0.3.0/24"
}

default_tags = {
  project = "TerraformLab"
  owner   = "ivan"
}

master_vm_name         = "vm-master"
master_vm_size         = "Standard_B1s"
master_admin_username  = "azureuser"
admin_password = "Azureuser123"
master_disk_size_gb    = 30

master_os = {
  publisher = "Canonical"
  offer     = "UbuntuServer"
  sku       = "18.04-LTS"
  version   = "latest"
}

storage_account_name    = "stgaccivanmslab"
nsg_name                = "ivanms-nsg"

jenkins_vm_name         = "jenkins-server"
jenkins_vm_size         = "Standard_DS1_v2"
jenkins_admin_username  = "adminjenkins"
jenkins_disk_size_gb    = 30
jenkins_os = {
  publisher = "Canonical"
  offer     = "UbuntuServer"
  sku       = "18.04-LTS"
  version   = "latest"
}

workers_vm_name_prefix  = "target-vm"
workers_instance_count  = 3
workers_vm_size         = "Standard_B1ms"
workers_admin_username  = "admintarget"
workers_disk_size_gb    = 40
workers_os = {
  publisher = "Canonical"
  offer     = "UbuntuServer"
  sku       = "18.04-LTS"
  version   = "latest"
}



