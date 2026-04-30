# Level 1 - root
resource "azurerm_management_group" "root" {
  name                       = "contoso"
  display_name               = "Contoso"
  parent_management_group_id = var.root_parent_management_group_id
}

# Level 2 - children of root
resource "azurerm_management_group" "level2" {
  for_each = {
    platform       = "Platform"
    workloads      = "Workloads"
    sandbox        = "Sandbox"
    decommissioned = "Decommissioned"
  }

  name                       = "contoso-${each.key}"
  display_name               = each.value
  parent_management_group_id = azurerm_management_group.root.id
}

# Level 3 - children of platform
resource "azurerm_management_group" "level3_platform" {
  for_each = {
    connectivity = "Connectivity"
    management   = "Management"
    identity     = "Identity"
    security     = "Security"
  }

  name                       = "contoso-${each.key}"
  display_name               = each.value
  parent_management_group_id = azurerm_management_group.level2["platform"].id
}

resource "azurerm_management_group_subscription_association" "this" {
  for_each = local.subscription_associations

  management_group_id = each.value.level == 2 ? azurerm_management_group.level2[each.value.mg_key].id : azurerm_management_group.level3_platform[each.value.mg_key].id
  subscription_id     = "/subscriptions/${each.value.sub_id}"
}
