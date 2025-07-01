azure_virtual_machines = {
  web = {
    name                = "web-vm"
    resource_group_name = "VM-rg"
    location            = "East US"
    subnet_id           = "/subscriptions/82643220-6977-45e1-bfbf-0b9a22965e23/resourceGroups/VNET-rg/providers/Microsoft.Network/virtualNetworks/ds-vnet/subnets/ds-subnet" # You'll use module.vnet.subnet_ids["hub"] when linking

    vm_size        = "Standard_B1s"
    admin_username = "azureuser"
    admin_password = "P@ssword1234!" # Not secure — use Key Vault or var-file in real infra

    image_publisher = "Canonical"
    image_offer     = "UbuntuServer"
    image_sku       = "18.04-LTS"
    image_version   = "latest"

    tags = {
      environment = "prd"
      role        = "windows"
    }
  }
}
