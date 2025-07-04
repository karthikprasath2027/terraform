

resource "azurerm_service_plan" "this" {
  for_each = var.azure_app_service

  name                = each.value.app_service_plan_name
  resource_group_name = each.value.resource_group_name
  location            = each.value.location
  os_type             = each.value.os_type  # typically "Linux"
  sku_name            = each.value.sku_name # e.g., "P1v2"
  
 tags = merge({mod="main_asp, time=now"}, each.value.asp_tag)

  # Optional, defaults to false
}

resource "azurerm_linux_web_app" "this" {
  for_each = var.azure_app_service

  name                = each.value.app_service_name
  resource_group_name = each.value.resource_group_name
  location            = each.value.location
  service_plan_id     = azurerm_service_plan.this[each.key].id
depends_on = [ azurerm_service_plan.this ]


  site_config {
    always_on          = try(each.value.always_on, false) 
    # Add runtime, version, etc., if needed
  }

  app_settings = each.value.app_settings


tags = merge({mod="main_app",time="now"}, each.value.app_tag)

  
}
