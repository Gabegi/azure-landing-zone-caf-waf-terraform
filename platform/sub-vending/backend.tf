terraform {
  backend "azurerm" {
    resource_group_name  = "remote-state"
    storage_account_name = "therealbestnamesa"
    container_name       = "lz-caf-waf-rfstate"
    key                  = "platform/sub-vending.tfstate"
  }
}
