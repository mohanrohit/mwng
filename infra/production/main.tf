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

module "db" {
    source = "../modules/db"

    supabase_organization_id = var.supabase_organization_id
    supabase_project_name    = var.supabase_project_name
    supabase_project_location = var.supabase_project_location
    supabase_database_password = var.supabase_database_password
}


module "web_service_plan" {
    source = "../modules/web-service-plan"

    service_plan_name = var.service_plan_name

    resource_group_name = azurerm_resource_group.rg.name
    resource_group_location = azurerm_resource_group.rg.location

    location = azurerm_resource_group.rg.location

    worker_count = var.worker_count
    max_worker_count = var.max_worker_count
}
