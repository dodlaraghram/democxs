data "azurerm_client_config" "current" {
  
}

resource "azurerm_virtual_network_peering" "azrmvnepring-1" {
  name                      = var.azrmvnepring-1
  resource_group_name       = var.azvnetpering_name
  virtual_network_name      = var.azure_virtual_network_name
  remote_virtual_network_id = var.azurerm_virtual_network.id
}