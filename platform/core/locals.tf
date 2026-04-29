locals {
  management_groups = {
    contoso = {
      display_name = "Contoso"
      parent_key   = null # anchors to Tenant Root Group
    }
    platform = {
      display_name = "Platform"
      parent_key   = "contoso"
    }
    workloads = {
      display_name = "Workloads"
      parent_key   = "contoso"
    }
    connectivity = {
      display_name = "Connectivity"
      parent_key   = "platform"
    }
    management = {
      display_name = "Management"
      parent_key   = "platform"
    }
    identity = {
      display_name = "Identity"
      parent_key   = "platform"
    }
    security = {
      display_name = "Security"
      parent_key   = "platform"
    }
  }
}
