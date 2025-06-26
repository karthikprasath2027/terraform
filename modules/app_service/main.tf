resource "azurerm_resource_group" "this" {
  for_each = var.azure_app_service

  name     = each.value.resource_group_name
  location = each.value.location
}




resource "azurerm_app_service_plan" "this" {
  for_each = var.azure_app_service

  name                = each.value.app_service_plan_name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name

  sku {
    tier = each.value.app_service_sku_tier
    size = each.value.app_service_sku_size
  }
}

resource "azurerm_app_service" "this" {
  for_each = var.azure_app_service

  name                = each.value.app_service_name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
  app_service_plan_id = azurerm_app_service_plan.this[each.key].id

  site_config {
    dotnet_framework_version = each.value.dotnet_framework_version
    scm_type                 = each.value.scm_type
  }

  app_settings = each.value.app_settings

  connection_string {
    name  = each.value.connection_string_name
    type  = each.value.connection_string_type
    value = each.value.connection_string_value
  }
}
