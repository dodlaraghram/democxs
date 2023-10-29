module "AzureResourceGroups" {
  source = "./Modules/ResourceGroup"
  resource_groups = var.drr_resource_groups
}

module "Azurevirtualnetwork" {
    source = "./Modules/azvnet"
    vnet_resource_Group_name = var.drr_vnet_resource_Group_name
    location = var.drr_location
    azure_virtual_network_name = var.drr_azure_virtual_network_name
    virtual_network_cidr = var.drr_virtual_network_cidr
    common_tags = var.drr_common_tags
    depends_on = [ AzureResourceGroups ]
  
}

module "AzureSubnet" {
  source = "./Modules/Subnets"
  vnet_resource_Group_name = var.drr_vnet_resource_Group_name
  azure_subnet_name = var.drr_azure_subnet_name
  azure_virtual_name = var.drr_azure_virtual_network_name
  subnet_address_prefixs = var.drr_subnet_address_prefixs
  depends_on = [ module.AzureResourceGroups, module.Azurevirtualnetwork ]

}

module "AzureADLS" {
  source = "./Modules/ADLS"
  location = var.drr_location
  adls_resource_roup_name = var.drr_adls_resource_group_name
  datalake_name = var.drr_datalake_name
  account_kind = var.drr_account_kind
  common_tags = var.drr_common_tags
  account_tier = var.drr_account_tier
  replication_type = var.drr_replication_type
  depends_on = [ module.AzureResourceGroups ]
}

module "AzureLogAnalyticsWorkspace" {
    source = "./Modules/LogAnalyticsWs"
    loganalytics_resource_group_name = var.drr_loganalytics_resource_group_name
    location = var.drr_location
    log_analytics_workspacename = var.drr_log_analytics_workspacename
    common_tags = var.drr_common_tags
    depends_on = [ module.AzureResourceGroups ]
  
}