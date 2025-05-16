variable "storage_accounts" {
  type    = list(string)
  default = ["sohitguptastg1", "sohitguptastg2", "sohitguptastg3", "sohitguptastg4", "sohitguptastg5"]
}

variable "location" {
  type    = string
  default = "East US"
}

variable "resource_groups" {
  type = list(string)
}

# provider "azurerm" {
#   features {}
# }

