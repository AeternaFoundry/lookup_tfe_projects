variable "projects_lookup" {
  description = <<EOT
Map of projects_lookup, attributes below
Optional:
    - organization
EOT

  type = map(object({
    organization = optional(string)
  }))
}

