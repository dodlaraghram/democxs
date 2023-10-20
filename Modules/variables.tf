variable "drr_location" {
  type = string
}

variable "drr_resource_groups" {
  type = map(object({
    resource_group_name = string
    location = string
    tags = map(string)
  }))
}



variable "drr_common_tags" {
  type = map(string)
}

variable "drr_azure_virtual_network_name" {
  type = string
}

variable "drr_virtual_network_cidr" {
  type = list(string)
}

variable "drr_azure_subnet_name" {
  type = string
}

variable "drr_azure_subnet_address_prefixes" {
  type = list(string)
}
variable "drr_adls_resource_group_name" {
  type = string
}

variable "drr_drr_datalake_name" {
  type = string
}

variable "drr_adls_acount_kind" {
  type = string
}


variable "drr_account_tier" {
  type = string
}


variable "drr_replication_type" {
  type = string
}


variable "drr_log_analytics_workspacename" {
  type = string
}



