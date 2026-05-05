module "naming" {
  source  = "Azure/naming/azurerm"
  version = "~> 0.4"

  prefix = var.prefix
  suffix = var.suffix
}
