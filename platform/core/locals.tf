locals {
  subscription_associations = {
    conn-sub = {
      mg_key = "connectivity"
      sub_id = var.platform_subscription_id
      level  = 3
    }
    mgmt-sub = {
      mg_key = "management"
      sub_id = var.platform_subscription_id
      level  = 3
    }
    idty-sub = {
      mg_key = "identity"
      sub_id = var.platform_subscription_id
      level  = 3
    }
    sec-sub = {
      mg_key = "security"
      sub_id = var.platform_subscription_id
      level  = 3
    }
  }
}
