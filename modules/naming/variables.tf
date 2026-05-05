variable "prefix" {
  description = "List of prefixes prepended to resource names (e.g. [\"contoso\"])."
  type        = list(string)
  default     = []
}

variable "suffix" {
  description = "List of suffixes appended to resource names (e.g. [\"prod\"])."
  type        = list(string)
  default     = []
}
