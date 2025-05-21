resource_group_name = "ivanms-azure-terraform-lab"
location            = "westeurope"

# VM
vm_name        = "vm1-lab"
admin_username = "azureuser1"
admin_password = "azureuser1"  # Solo para pruebas

# Red
vnet_name      = "vnet-demo"
address_space  = "10.0.0.0/16"
subnet_name    = "subnet-demo"
subnet_prefix  = "10.0.1.0/24"

# NSG
nsg_name = "nsg-demo"

# Storage
storage_account_name = "stlab1"      # Debe ser único a nivel mundial
container_name       = "blobs-demo"
