output "root_mg_id" {
  description = "Resource ID of the root management group."
  value       = azurerm_management_group.root.id
}

output "platform_mg_id" {
  description = "Resource ID of the Platform management group."
  value       = azurerm_management_group.platform.id
}

output "workloads_mg_id" {
  description = "Resource ID of the Workloads management group."
  value       = azurerm_management_group.workloads.id
}

output "connectivity_mg_id" {
  description = "Resource ID of the Connectivity management group."
  value       = azurerm_management_group.connectivity.id
}

output "management_mg_id" {
  description = "Resource ID of the Management management group."
  value       = azurerm_management_group.management.id
}

output "identity_mg_id" {
  description = "Resource ID of the Identity management group."
  value       = azurerm_management_group.identity.id
}

output "security_mg_id" {
  description = "Resource ID of the Security management group."
  value       = azurerm_management_group.security.id
}
