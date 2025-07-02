
module "storage_account" {
  source                 = "../../modules/storage_account"
  azure_storage_accounts = var.azure_storage_accounts
  resource_group_name    = var.resource_group_name
  location               = var.location
}
