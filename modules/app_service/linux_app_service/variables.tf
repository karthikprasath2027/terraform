variable "azure_app_service" {
  description = "Map of Linux Web App configuration"
  type = map(object({
    resource_group_name   = string
    location              = string

    app_service_plan_name = string
    app_service_name      = string

    os_type               = string      # e.g., "Linux"
    sku_name              = string      # e.g., "P1v2"
    always_on           = optional(string, "false")  # Optional, default is "False"
    app_settings          = optional(map(string), {}) 
    tags = optional(map(string), {})  # Optional tags for the app service
     # Optional app settings
  }))
  # Optional tags for the app service

  # Optional future use
  # connection_strings   = optional(list(object({
  #   name  = string
  #   type  = string
  #   value = string
  # })), [])
  
  default = {
    "generic" = {
     
      resource_group_name   = "app-rg"
      location              = "Central India"
      app_service_plan_name = "app-plan1"
      app_service_name      = "app-webapp1"

      os_type               = "Linux"
      sku_name              = "F1"

      app_settings          = {
        "WEBSITE_RUN_FROM_PACKAGE" = "1"
        "APPINSIGHTS_INSTRUMENTATIONKEY" = "0000-xxxx-0000-xxxx"
      }
    }
  }
}
