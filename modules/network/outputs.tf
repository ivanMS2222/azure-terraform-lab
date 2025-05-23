output "vnet_id" {
  description = "ID de la red virtual"
  value       = azurerm_virtual_network.main.id
}

output "subnet_ids" {
  description = "IDs de las subredes"
  value       = { for k, subnet in azurerm_subnet.subnets : k => subnet.id }
}
