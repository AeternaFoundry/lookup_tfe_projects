output "projects_lookup_id" {
  description = "Map of id values across all projects_lookup, keyed the same as var.projects_lookup except keys with no id are omitted"
  value       = { for k, v in data.tfe_projects.projects_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "projects_lookup_organization" {
  description = "Map of organization values across all projects_lookup, keyed the same as var.projects_lookup except keys with no organization are omitted"
  value       = { for k, v in data.tfe_projects.projects_lookup : k => v.organization if v.organization != null && length(v.organization) > 0 }
}
output "projects_lookup_projects" {
  description = "Map of projects values across all projects_lookup, keyed the same as var.projects_lookup except keys with no projects are omitted"
  value       = { for k, v in data.tfe_projects.projects_lookup : k => v.projects if v.projects != null && length(v.projects) > 0 }
}

