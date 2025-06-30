variable "vnet_config" {
  type = map(object({
    vnet_name               = string
    address_space           = list(string)
    subnet_name             = string
    subnet_address_prefixes = list(string)
    location                = string
    resource_group_name     = string
  }))
}


variable "resource_group_name" {
  description = "Name of the resource group where the VNet will be created"
  type        = string
  
}

variable "location" {
  description = "Location where the VNet will be created"
  type        = string
  
}