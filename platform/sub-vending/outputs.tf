output "subscription_ids" {
  description = "Map of subscription key -> subscription ID for consumption by platform workload folders."
  value       = { for k, sub in azurerm_subscription.this : k => sub.id }
}
