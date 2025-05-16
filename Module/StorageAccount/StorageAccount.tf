# resource "azurerm_storage_account" "sohitstorage2" {
#   name                     = "stgdhondhu"
#   resource_group_name      = "rg-dhondhu"
#   location                 = "East US"
#   account_tier             = "Standard"
#   account_replication_type = "GRS"

# }


# variable "storage_accounts" {
#   type    = list(string)
#   default = ["sohitstg1", "sohitstg2", "soshitstg3", "sohitstg4", "sohitstg5"]
# }

# variable "location" {
#   type    = string
#   default = "East US"
# }

resource "azurerm_storage_account" "stg" {
  count                = length(var.storage_accounts)
  name                 = var.storage_accounts[count.index]
  resource_group_name = var.resource_groups[count.index]
  location             = var.location
  account_tier         = "Standard"
  account_replication_type = "GRS"
}
