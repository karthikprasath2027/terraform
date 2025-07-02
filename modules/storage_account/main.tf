resource "azurerm_storage_account" "this" {
  for_each = var.azure_storage_accounts

  name                     = each.value.name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = each.value.account_tier
  account_replication_type = each.value.account_replication_type

  # allow_blob_public_access = false remiander to uncomment after updating the version of the provider
  #enable_https_traffic_only = true


  depends_on = [ azurerm_resource_group.this ]


  tags = merge({type="storage account"},each.value.tags)

}

resource "azurerm_resource_group" "this" {
  for_each = var.azure_storage_accounts

  name     = each.value.resource_group_name
  location = each.value.location
  
}
