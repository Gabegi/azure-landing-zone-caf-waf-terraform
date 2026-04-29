variable "org_name" {
  description = "Short organisation name used to prefix all management group display names."
  type        = string
}

variable "tenant_id" {
  description = "Azure AD tenant ID."
  type        = string
}

variable "subscription_id" {
  description = "Subscription ID used by the azurerm provider (typically the management subscription)."
  type        = string
}

variable "subscription_associations" {
  description = "Map of management group key -> list of subscription IDs to associate."
  type        = map(list(string))
  default     = {}
}
