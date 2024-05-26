resource "azurerm_resource_group" "RG-Cloud" {
  name     = "cloud-rg"
  location = "eastus"
}

resource "azurerm_public_ip" "PIP2" {
  name                = "Cloud_PIP"
  resource_group_name = azurerm_resource_group.RG-Cloud.name
  location            = azurerm_resource_group.RG-Cloud.location
  allocation_method   = "Static"
}