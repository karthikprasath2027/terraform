module "windows_vm" {
  source                 = "../../../modules/vm/windows_vm"
  azure_virtual_machines = var.azure_virtual_machines
}
