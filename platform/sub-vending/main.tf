data "terraform_remote_state" "core" {
  backend = "azurerm"

  config = {
    resource_group_name  = "remote-state"
    storage_account_name = "therealbestnamesa"
    container_name       = "lz-caf-waf-rfstate"
    key                  = "platform/core.tfstate"
  }
}

# Create the subscription
resource "azurerm_subscription" "this" {
  subscription_name = var.subscription_display_name
  billing_scope_id  = var.billing_scope_id

  tags = {
    owner       = var.owner_email
    cost_center = var.cost_center
  }
}

# Place subscription into the correct MG
resource "azurerm_management_group_subscription_association" "this" {
  management_group_id = data.terraform_remote_state.core.outputs.management_group_ids[var.management_group_key]
  subscription_id     = azurerm_subscription.this.id
}

# Assign owner RBAC
resource "azurerm_role_assignment" "owner" {
  scope                = azurerm_subscription.this.id
  role_definition_name = "Owner"
  principal_id         = data.azurerm_client_config.current.object_id
}

# Create subscription budget
resource "azurerm_consumption_budget_subscription" "this" {
  name            = "budget-${lower(var.subscription_display_name)}"
  subscription_id = azurerm_subscription.this.id
  amount          = 1000
  time_grain      = "Monthly"

  time_period {
    start_date = "2025-01-01T00:00:00Z"
  }

  notification {
    enabled        = true
    threshold      = 80
    operator       = "GreaterThan"
    contact_emails = [var.owner_email]
  }
}

data "azurerm_client_config" "current" {}
