module "vm" {
  source                 = "../../../modules/vm/linux_vm"
  azure_virtual_machines = var.azure_virtual_machines
}
