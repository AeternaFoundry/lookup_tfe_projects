data "tfe_projects" "projects_lookup" {
  for_each = var.projects_lookup

  organization = each.value.organization
}

