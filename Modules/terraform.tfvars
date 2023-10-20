drr_location = "eastus"
drr_resource_groups = {
       "vnetrg"  = {
           resource_group_name = "dev-drr-rg"
           location = "eastus"
           tags = {
            "appowner" = "drrops"
            "application" = "xcsData"   

           }

       },
       "loganalyticsrg" = {
           resource_group_name = "dev-drr-loganalytics-rg"
           location = "eastus"

       },


       drr_vnet_resource_group_name = "dev-drr-vnet-rg"
       drr_azure_virtual_network_name = "dev-drr-vnet"
       drr_azure_virtual_network_cidr = ["10.0.0.0/24"]

       #sbnet
       drr_azure_subnet_name = "servicesubnet"
       drr_subnet_address_prefixes = ["10.0.0.0/26"]
      


      #adls
      drr_adls_resource_group_name = "dev-drr-storage-rg"
      drr_datalake_name = "devdatalakeadls"
      drr_adls_acount_kind = "StorageV2"



      #log analytics
      drr_loganalytics_resource_group_name = "dev-drr-loganalyticswsp-rg"







}