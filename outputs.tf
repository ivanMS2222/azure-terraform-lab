output "vm_name" {
  value = module.vm.vm_name
}

output "subnet_id" {
  value = module.network.subnet_id
}

output "nsg_id" {
  value = module.nsg.nsg_id
}

output "storage_account_name" {
  value = module.storage.storage_account_name
}

output "container_name" {
  value = module.storage.container_name
}
