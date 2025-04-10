locals {
  common_tags = {
    Organization = "${lower(var.organization_name)}"
    Environment  = "${lower(var.environment)}"
    Project      = "${lower(var.project)}"
    ManagedBy    = "terraform"
  }
}
