resource "azurerm_management_group" "this" {
  for_each = local.management_groups

  display_name               = each.value.display_name
  parent_management_group_id = each.value.parent_key != null ? azurerm_management_group.this[each.value.parent_key].id : null
}

resource "azurerm_management_group_subscription_association" "this" {
  for_each = var.subscription_associations

  management_group_id = azurerm_management_group.this[each.value.mg_key].id
  subscription_id     = each.value.sub_id
}
