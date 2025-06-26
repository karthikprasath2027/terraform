azure_virtual_machines = {
  web = {
    name                = "web-vm"
    resource_group_name = "ds-resource-group"
    location            = "East US"
    subnet_id           = "REPLACE_ME" # You'll use module.vnet.subnet_ids["hub"] when linking

    vm_size             = "Standard_B1s"
    admin_username      = "azureuser"
    admin_password      = "P@ssword1234!"  # Not secure — use Key Vault or var-file in real infra

    image_publisher     = "Canonical"
    image_offer         = "UbuntuServer"
    image_sku           = "18.04-LTS"
    image_version       = "latest"
  }
}
