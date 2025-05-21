resource_group_name = "ivanms-terraform-lab"
location            = "westeurope"

# VM
vm_name        = "vm-demo"
admin_username = "azureuser"
admin_password = "P@ssw0rd1234!"  # Solo para pruebas

# Red
vnet_name      = "vnet-demo"
address_space  = "10.0.0.0/16"
subnet_name    = "subnet-demo"
subnet_prefix  = "10.0.1.0/24"

# NSG
nsg_name = "nsg-demo"

# Storage
storage_account_name = "stlabivanms"      # Debe ser único a nivel mundial
container_name       = "blobs-demo"
