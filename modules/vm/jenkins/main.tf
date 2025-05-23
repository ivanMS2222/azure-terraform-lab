resource "azurerm_linux_virtual_machine" "jenkins" {
  name                = var.vm_name
  location            = var.location
  resource_group_name = var.resource_group_name
  size                = var.vm_size
  admin_username      = var.admin_username
  network_interface_ids = [azurerm_network_interface.jenkins.id]
  admin_password        = var.admin_password
  disable_password_authentication = false

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
    disk_size_gb         = var.disk_size_gb
  }

  source_image_reference {
    publisher = var.os.publisher
    offer     = var.os.offer
    sku       = var.os.sku
    version   = var.os.version
  }

  tags = var.tags
}

resource "azurerm_network_interface" "jenkins" {
  name                = "${var.vm_name}-nic"
  location            = var.location
  resource_group_name = var.resource_group_name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = var.subnet_id
    private_ip_address_allocation = "Dynamic"
  }

  tags = var.tags
}
