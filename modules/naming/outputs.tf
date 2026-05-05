# Each output is an object with .name (max-length safe) and .name_unique (globally unique).
# Callers use e.g. module.naming.resource_group.name

output "resource_group"            { value = module.naming.resource_group }
output "virtual_network"           { value = module.naming.virtual_network }
output "subnet"                    { value = module.naming.subnet }
output "network_security_group"    { value = module.naming.network_security_group }
output "route_table"               { value = module.naming.route_table }
output "public_ip"                 { value = module.naming.public_ip }
output "storage_account"           { value = module.naming.storage_account }
output "key_vault"                 { value = module.naming.key_vault }
output "log_analytics_workspace"   { value = module.naming.log_analytics_workspace }
output "recovery_services_vault"   { value = module.naming.recovery_services_vault }
output "user_assigned_identity"    { value = module.naming.user_assigned_identity }
output "automation_account"        { value = module.naming.automation_account }
