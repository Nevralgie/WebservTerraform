terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.58.0"
    }
  }
}
provider "azuread" {
  use_msi   = true
  tenant_id = "7349d3b2-951f-41be-877e-d8ccd9f3e73c"
}
provider "azurerm" {
   subscription_id = var.subscription_id
   #client_id = var.client_id
   #client_secret = var.client_secret
   tenant_id = var.tenant_id
   skip_provider_registration = true
   features {}
}
