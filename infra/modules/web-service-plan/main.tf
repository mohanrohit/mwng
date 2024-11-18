# creates an azure app service plan and app service
# to host the mwng web app

terraform {
    required_providers {
        azurerm = {
            source = "hashicorp/azurerm"
        }
    }
}

resource "azurerm_service_plan" "mwng_service_plan" {
    name                         = var.service_plan_name
    location                     = var.resource_group_location
    resource_group_name          = var.resource_group_name

    os_type                      = var.os
    sku_name                     = var.sku

    worker_count                 = var.worker_count
}
