resource "azurerm_management_group" "root" {
  display_name = local.management_groups.root
}

resource "azurerm_management_group" "platform" {
  display_name               = local.management_groups.platform
  parent_management_group_id = azurerm_management_group.root.id
}

resource "azurerm_management_group" "workloads" {
  display_name               = local.management_groups.workloads
  parent_management_group_id = azurerm_management_group.root.id
}

resource "azurerm_management_group" "connectivity" {
  display_name               = local.management_groups.connectivity
  parent_management_group_id = azurerm_management_group.platform.id
}

resource "azurerm_management_group" "management" {
  display_name               = local.management_groups.management
  parent_management_group_id = azurerm_management_group.platform.id
}

resource "azurerm_management_group" "identity" {
  display_name               = local.management_groups.identity
  parent_management_group_id = azurerm_management_group.platform.id
}

resource "azurerm_management_group" "security" {
  display_name               = local.management_groups.security
  parent_management_group_id = azurerm_management_group.platform.id
}

resource "azurerm_management_group_subscription_association" "this" {
  for_each = local.subscription_associations

  management_group_id = azurerm_management_group[each.value.mg_key].id
  subscription_id     = each.value.sub_id
}
