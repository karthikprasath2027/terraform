
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



resource "azurerm_linux_virtual_machine" "this" {
  for_each = var.azure_virtual_machines

  name                = each.value.name
  resource_group_name = each.value.resource_group_name
  location            = each.value.location
  size                = each.value.vm_size

  admin_username        = each.value.admin_username
  network_interface_ids = [azurerm_network_interface.this[each.key].id]

  admin_ssh_key {
    username   = each.value.admin_username
    public_key = file(each.value.ssh_public_key_path)
  }

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = each.value.image_publisher
    offer     = each.value.image_offer
    sku       = each.value.image_sku
    version   = each.value.image_version
  }

  disable_password_authentication = true

  tags = {
    environment = "dev"
  }
}

