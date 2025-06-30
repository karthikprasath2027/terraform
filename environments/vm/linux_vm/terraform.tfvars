azure_virtual_machines = {
  web = {
    name                = "web-vm"
    resource_group_name = "VM-rg"
    location            = "East US"
    subnet_id           = "/subscriptions/82643220-6977-45e1-bfbf-0b9a22965e23/resourceGroups/VNET-rg/providers/Microsoft.Network/virtualNetworks/ds-vnet/subnets/ds-subnet"

    vm_size             = "Standard_B1s"
    admin_username      = "azureuser"
    admin_password      = "P@ssw0rd123"

    image_publisher = "Canonical"
    image_offer     = "0001-com-ubuntu-server-jammy"
    image_sku       = "22_04-lts"
    image_version   = "latest"
  }
}
