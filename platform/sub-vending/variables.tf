variable "billing_scope" {
  description = "Billing scope under which subscriptions are created (EA enrollment, MCA billing profile, or MPA)."
  type        = string
}

variable "subscriptions" {
  description = "Map of subscriptions to create. Key is used as a unique identifier."
  type = map(object({
    display_name = string
    mg_key       = string
  }))
  default = {}
}
