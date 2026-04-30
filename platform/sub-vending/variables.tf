variable "subscription_id" {
  description = "ID of the subscription to associate with the target management group."
  type        = string
}

variable "subscription_display_name" {
  description = "Display name of the subscription."
  type        = string
}

variable "management_group_key" {
  description = "Key of the management group (must match a key in platform/core outputs)."
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
