terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.7.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "maja-rg-backend-tfstate"
    storage_account_name = "sabetfs5biilx9phq"
    container_name       = "tfstate"
    key                  = "application_platform.terraform.tfstate"
  }
}

provider "azurerm" {
  subscription_id = "4832bdd9-c568-497f-af42-3c45d1e16ef6"
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "${var.rg_name}-${terraform.workspace}"
  location = var.rg_location
}

module "database" {
  source      = "../modules/database"
  rg_name     = azurerm_resource_group.rg.name
  rg_location = azurerm_resource_group.rg.location
}