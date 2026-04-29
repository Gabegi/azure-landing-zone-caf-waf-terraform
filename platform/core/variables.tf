variable "tenant_id" {
  description = "Azure AD tenant ID."
  type        = string
}

variable "subscription_id" {
  description = "Subscription ID used by the azurerm provider (typically the management subscription)."
  type        = string
}

variable "subscription_associations" {
  description = "Map of unique key -> { mg_key, sub_id, level } to associate subscriptions to management groups."
  type = map(object({
    mg_key = string
    sub_id = string
    level  = number
  }))
  default = {}
}
