output "plan_id" {
  value = module.app_service.service_plan_id
}


output "app_id" {
  value = module.app_service.web_app_id
}

output "resource_group_id" {
  value = module.app_service.resource_group_id

}