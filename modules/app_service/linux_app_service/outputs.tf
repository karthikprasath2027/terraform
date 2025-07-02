output "service_plan_id" {
  value = [for plan in azurerm_service_plan.this : plan.id]
}

output "web_app_id" {
  value = [for app in azurerm_linux_web_app.this : app.id]
}


