output "loganalyticsws" {
  value = azurerm_log_analytics_workspace.Azloaws.name
}

output "loganalyticswsid" {
    value = azurerm_log_analytics_workspace.Azloaws.id
  
}