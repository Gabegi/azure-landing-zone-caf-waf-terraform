output "management_group_ids" {
  description = "Map of management group key -> resource ID, for consumption by other platform folders."
  value = merge(
    { contoso = azurerm_management_group.root.id },
    { for k, v in azurerm_management_group.level2 : k => v.id },
    { for k, v in azurerm_management_group.level3_platform : k => v.id }
  )
}
