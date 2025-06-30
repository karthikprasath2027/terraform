resource "azurerm_resource_group" "this" {
  name     = var.resource_group_name
  location = var.location
  
}

resource "azurerm_virtual_network" "this" {
  for_each = var.vnet_config

  name                = each.value.vnet_name
  address_space       = each.value.address_space
  location            = each.value.location
  resource_group_name = azurerm_resource_group.this.name
  tags = {
    owner="karthik",
    environment="dev",
  }
  depends_on = [ azurerm_resource_group.this ]
}

resource "azurerm_subnet" "this" {
  for_each = var.vnet_config

  name                 = each.value.subnet_name
  resource_group_name  = azurerm_resource_group.this.name
  virtual_network_name = azurerm_virtual_network.this[each.key].name
  address_prefixes     = each.value.subnet_address_prefixes
 depends_on = [ azurerm_virtual_network.this ]
}



