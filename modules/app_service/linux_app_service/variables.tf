variable "azure_app_service" {
  description = "Map of Linux Web App configuration"
  type = map(object({
    resource_group_name   = string
    location              = string

    app_service_plan_name = string
    app_service_name      = string

    os_type               = string      # e.g., "Linux"
    sku_name              = string      # e.g., "P1v2"

    app_settings          = optional(map(string), {})  # Optional app settings
  }))
}
