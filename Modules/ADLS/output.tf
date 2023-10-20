output "adlname" {
    value = azure_storage_account.Adlst.name
    sensitive = false
}

output "id" {
  value = azure_storage_account.Adlst.id
  sensitive = false
}