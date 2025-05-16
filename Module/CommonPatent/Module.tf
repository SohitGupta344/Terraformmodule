# module "resource_group" {
#   source = "../ResourceGroup"

# }
# module "storage_account" {
#   depends_on = [module.resource_group]
#   source     = "../StorageAccount"

# }
module "rg_module" {
  source         = "../ResourceGroup"
  resource_groups = var.resource_groups
  location        = var.location
}

module "stg_module" {
  source           = "../StorageAccount"
  depends_on       = [module.rg_module]
  storage_accounts = var.storage_accounts
  location         = var.location
  resource_groups  = module.rg_module.resource_group_names
}

