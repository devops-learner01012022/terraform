resource "azurerm_resource_group" "main" {
  name     = "my-dev-rg"
  location = "West Europe"
}

module "aks" {
  source                    = "../modules/aks"
  resource_group_name       = azurerm_resource_group.main.name
  resource_group_location   = azurerm_resource_group.main.location
  prefix                    = "res-dev"
  namespaces = {
    "demo" = {
      owner = "myaccount@test.com",
    }
  }
}