output "sa_connection_string" {
  description = "The connection string for the storage account"
  value       = azurerm_storage_account.sa.primary_connection_string
}

output "sa_access_key" {
  description = "The access key for the storage account"
  value       = azurerm_storage_account.sa.primary_access_key
}