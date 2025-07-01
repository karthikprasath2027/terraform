azure_storage_accounts = {
  logs = {
    name                     = "1darkknightrises"
    resource_group_name      = "SA-rg"
    location                 = "East US"
    account_tier             = "Standard"
    account_replication_type = "LRS"
  }

  artifacts = {
    name                     = "bittyboughtabutter"
    resource_group_name      = "delete"
    location                 = "Central India"
    account_tier             = "Standard"
    account_replication_type = "LRS"
  }
}


