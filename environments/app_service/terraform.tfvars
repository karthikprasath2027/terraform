azure_app_service = {
  "app1" = {
    resource_group_name      = "rg-app1"
    location                 = "West Europe"
    app_service_plan_name    = "asp-app1"
    app_service_sku_tier     = "Standard"
    app_service_sku_size     = "S1"
    app_service_name         = "app1-service"
    dotnet_framework_version = "v4.0"
    scm_type                 = "LocalGit"
    app_settings             = { "SOME_KEY" = "some-value" }
    connection_string_name   = "Database"
    connection_string_type   = "SQLServer"
    connection_string_value  = "Server=sql.example.com;Integrated Security=SSPI"
  }
}
