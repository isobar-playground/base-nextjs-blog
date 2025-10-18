resource "vercel_project" "this" {
  name             = var.project_name
  framework        = var.framework
  build_command    = var.build_command
  output_directory = var.output_directory

  git_repository = var.git_provider == "" ? null : {
    type              = var.git_provider
    repo              = "${var.git_owner}/${var.git_repo}"
    production_branch = var.production_branch
  }
}

resource "vercel_project_environment_variable" "prod" {
  for_each   = var.env_production
  project_id = vercel_project.this.id
  key        = each.key
  value      = each.value
  target     = ["production"]
}

resource "vercel_project_environment_variable" "preview" {
  for_each   = var.env_preview
  project_id = vercel_project.this.id
  key        = each.key
  value      = each.value
  target     = ["preview"]
}

resource "vercel_project_domain" "this" {
  for_each   = toset(var.domains)
  project_id = vercel_project.this.id
  domain     = each.value
}


