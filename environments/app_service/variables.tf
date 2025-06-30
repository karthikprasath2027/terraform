variable "azure_app_service" {
  description = "App service configuration"
  type = map(object({
    resource_group_name      = string
    location                 = string
    app_service_plan_name    = string
    app_service_sku_tier     = string
    app_service_sku_size     = string
    app_service_name         = string
    dotnet_framework_version = string
    scm_type                 = string
    app_settings             = map(string)
    connection_string_name   = string
    connection_string_type   = string
    connection_string_value  = string
  }))
}

