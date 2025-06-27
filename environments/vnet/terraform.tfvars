vnet_config = {
  hub = {
    vnet_name               = "hub-vnet"
    address_space           = ["10.0.0.0/16"]
    subnet_name             = "hub-subnet-1"
    subnet_address_prefixes = ["10.0.1.0/24"]
    location                = "East US"
    resource_group_name     = "VNET-rg"
  }

    spoke = {
    vnet_name               = "spoke-vnet"
    address_space           = ["10.0.0.0/16"]
    subnet_name             = "spoke-subnet"
    subnet_address_prefixes = ["10.0.1.0/24"]
    location                = "West US"
    resource_group_name     = "VNET-rg"
  }
}


resource_group_name = "VNET-rg"
location = "East US"


