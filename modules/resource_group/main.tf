resource "azurerm_resource_group" "this" {
  for_each = var.resource_groups

  name     = each.value.resource_group_name
  location = each.value.location
  tags = merge({env="l"}, each.value.tags)
  
}