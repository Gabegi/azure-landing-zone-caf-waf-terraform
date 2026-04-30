locals {
  subscription_associations = {
    conn-sub = {
      mg_key = "connectivity"
      sub_id = var.sub_id_connectivity
      level  = 3
    }
    mgmt-sub = {
      mg_key = "management"
      sub_id = var.sub_id_management
      level  = 3
    }
    idty-sub = {
      mg_key = "identity"
      sub_id = var.sub_id_identity
      level  = 3
    }
    sec-sub = {
      mg_key = "security"
      sub_id = var.sub_id_security
      level  = 3
    }
  }
}
