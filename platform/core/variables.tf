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

variable "sub_id_connectivity" {
  description = "Subscription ID to associate with the Connectivity management group."
  type        = string
}

variable "sub_id_management" {
  description = "Subscription ID to associate with the Management management group."
  type        = string
}

variable "sub_id_identity" {
  description = "Subscription ID to associate with the Identity management group."
  type        = string
}

variable "sub_id_security" {
  description = "Subscription ID to associate with the Security management group."
  type        = string
}
