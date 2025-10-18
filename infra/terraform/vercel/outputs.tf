output "project_id" {
  value       = vercel_project.this.id
  description = "Vercel project ID"
}

output "project_name" {
  value       = vercel_project.this.name
  description = "Vercel project name"
}
