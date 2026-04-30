terraform {
  backend "azurerm" {
    resource_group_name  = "remote-state"
    storage_account_name = "therealbestnamesa"
    container_name       = "platform-sub-vending-tfstate"
    key                  = "platform/sub-vending.tfstate"
  }
}
