
module "storage_account" {
  source                 = "../../modules/storage_account"
  azure_storage_accounts = var.azure_storage_accounts


}

module "resource_group" {
  source = "../../modules/resource_group"

  resource_groups = {
    rg1 = {
      name     = "rg-storage"
      location = "East US"
      tags     = {
        environment = "dev"
      }
    }

    rg2 = {
      name     = "rg-app"
      location = "West Europe"
      tags     = {
        environment = "prod"
      }
    }
  }
}
