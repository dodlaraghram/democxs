
data "azurerm_client_config" "current" {}

resource "azurerm_virtual_network" "azvnet" {
  name                = var.azvnet
  location            = var.location
  resource_group_name = var.vnetrg.name
  address_space       = var.address_space
  #dns_servers         = ["10.0.0.4", "10.0.0.5"]



}