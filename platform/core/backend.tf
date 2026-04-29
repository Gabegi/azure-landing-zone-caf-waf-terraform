terraform {
  backend "azurerm" {
    resource_group_name  = "rg-tfstate"
    storage_account_name = "stgtfstatecore"
    container_name       = "tfstate"
    key                  = "platform/core.tfstate"
  }
}
