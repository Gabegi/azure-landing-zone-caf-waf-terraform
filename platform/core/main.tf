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
