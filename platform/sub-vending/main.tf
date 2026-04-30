data "terraform_remote_state" "core" {
  backend = "azurerm"

  config = {
    resource_group_name  = "remote-state"
    storage_account_name = "therealbestnamesa"
    container_name       = "lz-caf-waf-rfstate"
    key                  = "platform/core.tfstate"
  }
}

resource "azurerm_subscription" "this" {
  for_each = var.subscriptions

  subscription_name = each.value.display_name
  billing_scope_id  = var.billing_scope
}

resource "azurerm_management_group_subscription_association" "this" {
  for_each = var.subscriptions

  management_group_id = local.core_mg_ids[each.value.mg_key]
  subscription_id     = azurerm_subscription.this[each.key].id
}
