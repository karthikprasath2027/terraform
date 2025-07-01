variable "vnet_config" {
  description = "Map of VNet configurations"
  type = map(object({
    vnet_name               = string
    address_space           = list(string)
    subnet_name             = string
    subnet_address_prefixes = list(string)
    location                = string
    resource_group_name     = string
    tags                    = optional(map(string), {})
  }))
}
