# This file exports the NSG ID for use in other modules

output "nsg_id" {
  description = "The ID of the created Network Security Group"
  value       = azurerm_network_security_group.main.id
}
