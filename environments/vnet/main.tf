module "vnet" {
  source      = "../../modules/vnet"
  vnet_config = var.vnet_config
  resource_group_name = var.resource_group_name
  location = var.location  
}

