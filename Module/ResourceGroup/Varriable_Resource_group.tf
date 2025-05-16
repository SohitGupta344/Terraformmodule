variable "resource_groups" {
  type    = list(string)
  default = ["sohitguptarg1", "sohitguptarg2", "sohitguptarg3", "sohitguptarg4", "sohitguptarg5"]
}

variable "location" {
  type    = string
  default = "East US"
}

# provider "azurerm" {
#   features {}
# }

