locals {
  management_groups = {
    root = {
      display_name = var.org_name
      parent_key   = null
    }
    platform = {
      display_name = "Platform"
      parent_key   = "root"
    }
    workloads = {
      display_name = "Workloads"
      parent_key   = "root"
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
