variable "root_parent_management_group_id" {
  description = "Resource ID of the parent management group for the root Contoso MG."
  type        = string
  default     = "/providers/Microsoft.Management/managementGroups/Test"
}

variable "platform_subscription_id" {
  description = "Subscription ID to associate with all platform management groups."
  type        = string
}
