azure_storage_accounts = {
  logs = {
    name                     = "dslogstorage"
    resource_group_name      = "ds-resource-group"
    location                 = "East US"
    account_tier             = "Standard"
    account_replication_type = "LRS"
  }
}
