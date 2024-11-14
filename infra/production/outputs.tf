# azure

output "azure_subscription_id" {
    value        = azurerm_resource_group.rg.id
    description = "Azure subscription id"
}

# supabase

output "supabase_project_id" {
    value        = supabase_project.mwng.id
    description = "Supabase project id"
}
