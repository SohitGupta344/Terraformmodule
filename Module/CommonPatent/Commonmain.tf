terraform {

  backend "azurerm" {
    subscription_id      = "541f42e5-891d-4e2d-a650-086b66829d73"
    resource_group_name  = "backend"
    storage_account_name = "backendkaadda90"
    container_name       = "addekadabba"
    key                  = "Multiple.terraform.tfstate"

  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.26.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "541f42e5-891d-4e2d-a650-086b66829d73"
}

