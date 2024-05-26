resource "azurerm_resource_group" "RG_Cloud" {
  name     = "cloud-rg"
  location = "eastus"
}

resource "azurerm_public_ip" "PIP2" {
  name                = "Cloud_PIP"
  resource_group_name = azurerm_resource_group.RG_Cloud
  location            = azurerm_resource_group.RG_Cloud
  allocation_method   = "static"
}