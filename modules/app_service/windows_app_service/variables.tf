variable "azure_app_service" {
  description = "Map of Windows Web App configuration"
  type = map(object({
    resource_group_name   = string
    location              = string

    app_service_plan_name = string
    app_service_name      = string

    os_type               = string      # e.g., "Linux"
    sku_name              = string      # e.g., "P1v2"
    always_on           = optional(string, "false")  # Optional, default is "False"
    app_settings          = optional(map(string), {})  # Optional app settings

# commented out properties can be used in future if needed
    # dotnet_framework_version  = string
    # scm_type                  = string
    # app_settings              = map(string)
    # connection_string_name    = string
    # connection_string_type    = string
    # connection_string_value   = string
  }))



 

}