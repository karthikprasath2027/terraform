
resource "azurerm_resource_group" "this" {
  for_each = var.azure_virtual_machines

  name     = each.value.resource_group_name
  location = each.value.location
  
}

resource "azurerm_network_interface" "this" {
  for_each = var.azure_virtual_machines

  name                = "${each.value.name}-nic"
  location            = each.value.location
  resource_group_name = each.value.resource_group_name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = each.value.subnet_id
    private_ip_address_allocation = "Dynamic"
  }

  #depends_on = [ azurerm_resource_group.this ]
}




resource "azurerm_virtual_machine" "this" {
  for_each = var.azure_virtual_machines

  name                  = each.value.name
  location              = each.value.location
  resource_group_name   = each.value.resource_group_name
  network_interface_ids = [azurerm_network_interface.this[each.key].id]
  vm_size               = each.value.vm_size

delete_os_disk_on_termination = true

  storage_os_disk {
    name              = "${each.value.name}-osdisk"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }

  storage_image_reference {
    publisher = each.value.image_publisher
    offer     = each.value.image_offer
    sku       = each.value.image_sku
    version   = each.value.image_version
  }

  os_profile {
    computer_name  = each.value.name
    admin_username = each.value.admin_username
    admin_password = each.value.admin_password
  }

  os_profile_linux_config {
    disable_password_authentication = false
  }

  tags = {
    environment = "dev"
  }

  #depends_on = [ azurerm_network_interface.this ]
}



