# azure

output "azure_subscription_id" {
    value        = azurerm_resource_group.rg.id
    description = "Azure subscription id"
}

# supabase

output "supabase_project_id" {
    value        = module.db.supabase_project_id
    description = "Supabase project id"
}
