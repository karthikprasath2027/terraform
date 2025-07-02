output "resource_groups_id" {
  value = [for rg in azurerm_resource_group.this : rg.id]
}