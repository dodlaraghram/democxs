resource "azurerm_subnet" "azvmsbnet" {
  name                 = var.azvmsbnet
  resource_group_name  = var.vnetrg.name
  virtual_network_name = var.vnetork.name
  address_prefixes     = var.address_prefixes
}