terraform {
    required_providers {
        azurerm = {
            source  = "hashicorp/azurerm"
            version = "~> 4.8.0"
        }

        supabase = {
            source  = "supabase/supabase"
            version = "~> 1.0"
        }
    }

    required_version = ">= 1.1.0"
}

provider "azurerm" {
    features {}

    client_id       = var.azure_client_id
    client_secret   = var.azure_client_secret
    tenant_id       = var.azure_tenant_id
    subscription_id = var.azure_subscription_id
}

provider "supabase" {
    access_token = var.supabase_access_token
}

resource "azurerm_resource_group" "rg" {
    name     = var.resource_group_name
    location = var.resource_group_location
}
