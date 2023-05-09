# terraform {
# backend "azurerm" {}
# required_providers {
# azurerm = {
# source  = "hashicorp/azurerm"
# version = "=3.0.0"
# }
# }
# }


terraform {
  backend "azurerm" {
    resource_group_name  = "test-dev-rg"
    storage_account_name = "testdevstatefile"
    container_name       = "dev-terraform-state"
    key                  = "terraform.tfstate"
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }

}

provider "azurerm" {
  subscription_id            = "7eeeeew-2273-4a25-ae93-eaa5d11d96f2"
  skip_provider_registration = "true"
  features {}
}