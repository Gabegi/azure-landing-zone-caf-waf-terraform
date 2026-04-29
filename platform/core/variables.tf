variable "org_name" {
  description = "Short organisation name used as the root management group display name."
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
  description = "Map of unique key -> { mg_key, sub_id } pairs to associate subscriptions to management groups."
  type = map(object({
    mg_key = string
    sub_id = string
  }))
  default = {}
}
