variable "env" {
    type        = string
    description = "The environment name (qa, preview, production etc)"
}

# azure

variable "azure_subscription_id" {
    type        = string
    description = "Azure subscription id"
}

variable "azure_client_id" {
    type        = string
    description = "Azure client id (app id)"
}

variable "azure_client_secret" {
    type        = string
    description = "Azure client secret (password)"
}

variable "azure_tenant_id" {
    type        = string
    description = "Azure tenant id"
}

variable "resource_group_name" {
    type        = string
    description = "Azure resource group name"
}

variable "resource_group_location" {
    type        = string
    description = "Azure resource group location"
}

# supabase

variable "supabase_access_token" {
    type        = string
    description = "Supabase access token"
}

variable "supabase_organization_id" {
    type = string
    description = "Supabase organization id"
}

variable "supabase_project_name" {
    type = string
    description = "Supabase project name"
}

variable "supabase_project_location" {
    type = string
    description = "Supabase project location"
}

variable "supabase_database_password" {
    type = string
    description = "Supabase database password"
}
