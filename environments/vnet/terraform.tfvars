vnet_config = {
  vnet-1 = {
    vnet_name               = "vnet-1"
    address_space           = ["10.0.1.0/24"]
    subnet_name             = "default"
    subnet_address_prefixes = ["10.0.1.0/28"]
    location                = "Central India"
    resource_group_name     = "VNET-resource-group"
  }

  vnet-2 = {
    vnet_name               = "vnet-2"
    address_space           = ["10.0.1.0/24"]
    subnet_name             = "default"
    subnet_address_prefixes = ["10.0.1.0/28"]  
    location                = "South India"
    resource_group_name     = "VNET-resource-group"
  }



}


