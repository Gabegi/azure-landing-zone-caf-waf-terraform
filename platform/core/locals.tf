locals {
  management_groups = {
    root         = var.org_name
    platform     = "${var.org_name}-platform"
    workloads    = "${var.org_name}-workloads"
    connectivity = "${var.org_name}-platform-connectivity"
    management   = "${var.org_name}-platform-management"
    identity     = "${var.org_name}-platform-identity"
    security     = "${var.org_name}-platform-security"
  }

  # Flatten subscription associations into a single map for for_each
  subscription_associations = {
    for pair in flatten([
      for mg_key, sub_ids in var.subscription_associations : [
        for sub_id in sub_ids : {
          key    = "${mg_key}-${sub_id}"
          mg_key = mg_key
          sub_id = sub_id
        }
      ]
    ]) : pair.key => pair
  }
}
