resource_group = "rg-lab-infra"
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
ssh_public_key_path    = "~/.ssh/id_rsa.pub"
master_disk_size_gb    = 30

master_os = {
  publisher = "Canonical"
  offer     = "UbuntuServer"
  sku       = "20_04-lts-gen2"
  version   = "latest"
}

storage_account_name    = "mystorageacct01"
nsg_name                = "my-nsg"

jenkins_vm_name         = "jenkins-server"
jenkins_vm_size         = "Standard_DS1_v2"
jenkins_admin_username  = "adminjenkins"
jenkins_disk_size_gb    = 30
jenkins_os              = "UbuntuLTS"

targets_vm_name_prefix  = "target-vm"
targets_instance_count  = 3
targets_vm_size         = "Standard_B1ms"
targets_admin_username  = "admintarget"
targets_disk_size_gb    = 20
targets_os              = "UbuntuLTS"
