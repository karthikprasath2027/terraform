
module "storage_account" {
  source                 = "../../modules/storage_account"
  azure_storage_accounts = var.azure_storage_accounts
}


