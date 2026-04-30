variable "root_parent_management_group_id" {
  description = "Resource ID of the parent management group for the root Contoso MG. Defaults to Tenant Root Group."
  type        = string
  default     = null
}

variable "tenant_id" {
  description = "Azure AD tenant ID."
  type        = string
}

variable "subscription_id" {
  description = "Subscription ID used by the azurerm provider (typically the management subscription)."
  type        = string
}

variable "platform_subscription_id" {
  description = "Subscription ID to associate with all platform management groups."
  type        = string
}
