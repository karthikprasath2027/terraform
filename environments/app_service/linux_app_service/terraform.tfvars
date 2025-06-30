azure_app_service = {
  app1 = {
    resource_group_name   = "app-rg"
    location              = "Central India"
    app_service_plan_name = "app-plan1"
    app_service_name      = "app-webapp1"

    os_type  = "Linux"
    sku_name = "F1"


  always_on = "False" 

    # app_settings = {
    #   "WEBSITE_RUN_FROM_PACKAGE" = "1"
    #   "APPINSIGHTS_INSTRUMENTATIONKEY" = "0000-xxxx-0000-xxxx"
  }
 # Runtime or other settings can go here
  

  # Optional: Uncomment if connection strings are supported in your module
  # connection_strings = [
  #   {
  #     name  = "db"
  #     type  = "SQLAzure"
  #     value = "Server=tcp:myserver.database.windows.net,1433;Initial Catalog=mydb;User ID=admin@myserver;Password=secret;"
  #   }
  # ]
}

