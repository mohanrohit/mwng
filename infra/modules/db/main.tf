# creates a supabase project that has not only the database
# but also the other pieces of the backend (storage, auth,
# functions, etc.) of which we're using only auth

terraform {
    required_providers {
        supabase = {
            source = "supabase/supabase"
        }
    }
}

resource "supabase_project" "mwng" {
    organization_id   = var.supabase_organization_id
    name              = var.supabase_project_name
    region            = var.supabase_project_location
    database_password = var.supabase_database_password

    lifecycle {
        ignore_changes = [database_password]
    }
}
