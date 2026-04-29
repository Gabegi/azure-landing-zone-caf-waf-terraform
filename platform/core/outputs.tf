output "management_group_ids" {
  description = "Map of management group key -> resource ID, for consumption by other platform folders."
  value       = { for k, mg in azurerm_management_group.this : k => mg.id }
}
