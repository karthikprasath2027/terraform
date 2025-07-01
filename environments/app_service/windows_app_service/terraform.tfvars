azure_app_service = {
  app1 = {
    resource_group_name   = "win--app-rg"
    location              = "Germany West Central"
    app_service_plan_name = "win-app-plan1"
    app_service_name      = "win-app-webapp1"

    os_type               = "Windows"
    sku_name              = "F1"

  always_on = "false"
    # app_settings = {
    #   "WEBSITE_RUN_FROM_PACKAGE" = "1"
    #   "APPINSIGHTS_INSTRUMENTATIONKEY" = "0000-xxxx-0000-xxxx"
    }

    # Optional: Uncomment if connection strings are supported in your module
    # connection_strings = [
    #   {
    #     name  = "db"
    #     type  = "SQLAzure"
    #     value = "Server=tcp:myserver.database.windows.net,1433;Initial Catalog=mydb;User ID=admin@myserver;Password=secret;"
    #   }
    # ]
  }

