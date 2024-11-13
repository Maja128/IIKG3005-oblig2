// App service module

resource "azurerm_service_plan" "service_plan" {
  name                = var.service_plan_name
  resource_group_name = var.rg_name
  location            = var.rg_location
  os_type             = "Linux"
  sku_name            = "P1v2"
}