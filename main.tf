terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.47.0"
    }
  }
    backend "azurerm" {}
    
}


provider "azurerm" {
     client_id       = var.client_id
    client_secret   = var.client_secret
    subscription_id = var.subscription_id
    tenant_id       = var.tenant_id
  features {}
}



resource "azurerm_resource_group" "rg-app" {

  name     = "my-app-rg-terraform-${var.environment}"
  location = "West US"
}

