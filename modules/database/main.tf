// Database module

data "azurerm_key_vault" "kv" {
  name                = "kvbe5biilx9phq"
  resource_group_name = "maja-rg-backend-tfstate"
}

data "azurerm_key_vault_secret" "kv_username" {
  name         = "db-admin-username"
  key_vault_id = data.azurerm_key_vault.kv.id
}

data "azurerm_key_vault_secret" "kv_password" {
  name         = "db-admin-password"
  key_vault_id = data.azurerm_key_vault.kv.id
}

resource "azurerm_mssql_server" "mssql_server" {
  name                          = var.mssql_server_name
  resource_group_name           = var.rg_name
  location                      = var.rg_location
  version                       = "12.0"
  administrator_login           = data.azurerm_key_vault_secret.kv_username.value
  administrator_login_password  = data.azurerm_key_vault_secret.kv_password.value
  public_network_access_enabled = "false"
}

resource "azurerm_mssql_database" "mssql_db" {
  name      = var.db_name
  server_id = azurerm_mssql_server.mssql_server.id
}