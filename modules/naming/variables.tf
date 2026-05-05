variable "prefix" {
  description = "Org prefix prepended to all resource names. Defaults to the Contoso abbreviation."
  type        = list(string)
  default     = ["conto"]

  validation {
    condition     = length(var.prefix) > 0
    error_message = "prefix must contain at least the org abbreviation."
  }
}

variable "suffix" {
  description = "List of suffixes appended to resource names, typically env + region (e.g. [\"prod\", \"eus\"])."
  type        = list(string)
  default     = []
}
