output "linux_vm_id" {
  value = [for vm in azurerm_linux_virtual_machine.this : vm.id]

}