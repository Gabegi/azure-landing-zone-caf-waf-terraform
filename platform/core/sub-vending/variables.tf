variable "subscription_display_name" {
  description = "Display name of the subscription to create."
  type        = string
}

variable "billing_scope_id" {
  description = "Billing scope under which the subscription is created (EA enrollment account, MCA billing profile, etc.)."
  type        = string
}

variable "management_group_key" {
  description = "Key of the management group to place this subscription under (must match a key in platform/core outputs)."
  type        = string
}

variable "owner_email" {
  description = "Email of the subscription owner."
  type        = string
}

variable "cost_center" {
  description = "Cost center tag for billing purposes."
  type        = string
}

variable "location" {
  description = "Default Azure region for resources deployed into this subscription."
  type        = string
}
