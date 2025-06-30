variable "azure_app_service" {
  description = "Linux App Service configuration"
  type = map(object({
    resource_group_name   = string
    location              = string
    app_service_plan_name = string
    app_service_name      = string

    os_type  = string # "Linux"
    sku_name = string # Example: "P1v2"

    app_settings = optional(map(string), {})

    # Optional future use
    # connection_strings   = optional(list(object({
    #   name  = string
    #   type  = string
    #   value = string
    # })), [])
  }))
}
