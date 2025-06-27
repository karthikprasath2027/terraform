module "app_service" {
  source = "../../modules/app_service"
  azure_app_service = var.azure_app_service
}
