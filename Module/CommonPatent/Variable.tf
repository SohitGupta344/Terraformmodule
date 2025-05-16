variable "resource_groups" {
  type = list(string)
  default = ["sohitguptarg1", "sohitguptarg2", "sohitguptarg3", "sohitguptarg4", "sohitguptarg5"]
}

variable "storage_accounts" {
  type = list(string)
  default = ["sohitguptastg1", "sohitguptastg2", "sohitguptastg3", "sohitguptastg4", "sohitguptastg5"]
}

variable "location" {
  type = string
  default = "East US"
}
