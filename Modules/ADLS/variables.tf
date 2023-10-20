variable "location" {
  type = string
}

variable "adls_rg_name" {
  type = string
}



variable "accout_tier" {
  type = string
}

variable "replication_type" {
  type = string
}

variable "Account_kind" {
  type = string
}

variable "datalake" {
  type = string
}

variable "common_tags" {
  type = map()
}
variable "azsubnet_id" {
  type = list()
}

