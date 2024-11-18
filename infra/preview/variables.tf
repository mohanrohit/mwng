# azure

variable "azure_subscription_id" {
    type = string
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
    type = string
}

variable "resource_group_name" {
    type = string
}

variable "resource_group_location" {
    type = string
}


# database

variable "supabase_access_token" {
    type = string
}

variable "supabase_organization_id" {
    type = string
}

variable "supabase_project_name" {
    type = string
}

variable "supabase_project_location" {
    type = string
}

variable "supabase_database_password" {
    type = string
}

# web app

variable "service_plan_name" {
    type = string
}

variable "os" {
    type = string
    default = "Linux"
}

variable "sku" {
    type = string
    default = "F1"
}

variable "worker_count" {
    type = number
    default = 1
}

variable max_worker_count {
    type = number
    default = 1
}
