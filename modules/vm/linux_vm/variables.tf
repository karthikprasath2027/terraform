variable "azure_virtual_machines" {
  type = map(object({
    name                = string
    resource_group_name = string
    location            = string
    subnet_id           = string
    vm_size             = string

    admin_username      = string
    ssh_public_key_path = string

    image_publisher = string
    image_offer     = string
    image_sku       = string
    image_version   = string
  }))
}
