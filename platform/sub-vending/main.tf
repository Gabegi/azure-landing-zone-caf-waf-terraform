data "terraform_remote_state" "core" {
  backend = "azurerm"

  config = {
    resource_group_name  = "remote-state"
    storage_account_name = "therealbestnamesa"
    container_name       = "lz-caf-waf-rfstate"
    key                  = "platform/core.tfstate"
  }
}

resource "azurerm_management_group_subscription_association" "this" {
  management_group_id = data.terraform_remote_state.core.outputs.management_group_ids["management"]
  subscription_id     = "/subscriptions/${var.subscription_id}"
}
