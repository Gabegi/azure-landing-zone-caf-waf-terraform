locals {
  core_mg_ids = data.terraform_remote_state.core.outputs.management_group_ids
}
