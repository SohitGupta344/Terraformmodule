# resource "azurerm_resource_group" "rg" {
#   name     = "rg-dhondhu"
#   location = "East US"
# }


resource "azurerm_resource_group" "rg" {
  count    = length(var.resource_groups)
  name     = var.resource_groups[count.index]
  location = var.location
}

output "resource_group_names" {
  value = azurerm_resource_group.rg[*].name
}





