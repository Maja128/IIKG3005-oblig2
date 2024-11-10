// Storage module

resource "random_string" "random_string" {
  length  = 10
  special = false
  upper   = false
}

resource "azurerm_storage_account" "sa" {
  name                     = "${lower(var.sa_name)}${random_string.random_string.result}"
  resource_group_name      = var.rg_name
  location                 = var.rg_location
  account_tier             = "Standard"
  account_replication_type = "GRS"
}

resource "azurerm_storage_container" "sc" {
  name                  = var.sc_name
  storage_account_name  = azurerm_storage_account.sa.name
  container_access_type = "private"
}

resource "azurerm_storage_blob" "sb" {
  name                   = var.sb_name
  storage_account_name   = azurerm_storage_account.sa.name
  storage_container_name = azurerm_storage_container.sc.name
  type                   = "Block"
}