resource "azurerm_log_analytics_workspace" "Azloaws" {
  name                = var.Azloaws
  location            = var.location
  resource_group_name = var.Azloaws.name
  sku                 = "PerGB2018"
  retention_in_days   = 30
}