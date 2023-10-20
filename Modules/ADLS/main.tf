
resource "azurerm_storage_account" "Adlst" {
  name                     = var.datalake
  resource_group_name      = var.adls_rg_name
  location                 = var.location
  account_tier             = var.accout_tier
  account_replication_type = var.replication_type
  account_kind             = var.Account_kind
  is_hns_enabled           = "true"
  allow_nested_items_to_be_public = false
  public_network_access_enabled = false

  tags = var.common_tags


network_rules{
    default_action = "Deny"
    virtual_network_subnet_ids = var.azsubnet_id
}
}

resource "azurerm_storage_data_lake_gen2_filesystem" "Azstgfs" {
  name               = "Azstgfs"
  storage_account_id = azurerm_storage_account.Adlst.id

}