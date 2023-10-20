terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.46.0"
    }
  }

}

provider "azurerm" {

  subscription_id = "ae231b2f-8211-4f88-b5c1-df0bf3fd97f0"
  tenant_id = "ae58859f-9c48-4516-b237-63f152186d8d"
  client_id = "402e1460-1764-4db2-939f-e13e7ed9447b"
  client_secret = "nKc8Q~D3ZxkBFInuakrg4.KX03hVZQYtCb4_hc5F"
  features{}
}
