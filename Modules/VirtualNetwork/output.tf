output "vnet_id" {
  value = azurerm_virtual_network.azvnet.id
  sensitive = false
}