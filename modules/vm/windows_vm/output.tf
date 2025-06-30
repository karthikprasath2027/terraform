output "linux_vm_id" {
  value = [for vm in azurerm_windows_virtual_machine.this : vm.id]

}