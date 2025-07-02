variable "azure_storage_accounts" {
  type = map(object({
    name                     = string
    resource_group_name      = string
    location                 = string
    account_tier             = string
    account_replication_type = string
    tags                     = optional(map(string), {})

  }))
}

variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string
}
