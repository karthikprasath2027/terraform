vnet_config = {
  hub = {
    vnet_name               = "ds-vnet"
    address_space           = ["10.0.0.0/16"]
    subnet_name             = "ds-subnet"
    subnet_address_prefixes = ["10.0.1.0/24"]
    location                = "East US"
    resource_group_name     = "ds-resource-group"
  }
}
