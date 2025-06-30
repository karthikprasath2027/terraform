# Lookup an existing Azure Virtual Network by name
data "azurerm_virtual_network" "this" {
  name                = "ds-vnet"
  resource_group_name = "ds-resource-group"
}

# # Lookup an existing Azure Subnet by name within the VNet
# data "azurerm_subnet" "public" {
#   name                 = "ds-public-subnet"
#   virtual_network_name = data.azurerm_virtual_network.this.name
#   resource_group_name  = "ds-resource-group"
# }