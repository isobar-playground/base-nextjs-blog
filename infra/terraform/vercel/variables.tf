variable "vercel_token" {
  type        = string
  sensitive   = true
  description = "Vercel API token used by the provider"
}

variable "project_name" {
  type        = string
  description = "Vercel project name"
}

variable "team_id" {
  type        = string
  default     = ""
  description = "Vercel team ID; empty means personal account"
}

variable "framework" {
  type        = string
  default     = "nextjs"
  description = "Framework hint for Vercel (e.g., nextjs, other)"
}

variable "git_provider" {
  type        = string
  default     = ""
  description = "Optional git provider: github | gitlab | bitbucket; empty to skip linking"
}

variable "git_owner" {
  type        = string
  default     = ""
  description = "Git org/user name when linking repository"
}

variable "git_repo" {
  type        = string
  default     = ""
  description = "Git repository name when linking repository"
}

variable "production_branch" {
  type        = string
  default     = "main"
  description = "Production branch name for linked git repo"
}

variable "build_command" {
  type        = string
  default     = null
  description = "Custom build command (not used when external CI/CD performs builds)"
}

variable "output_directory" {
  type        = string
  default     = null
  description = "Output directory (not used when external CI/CD performs builds)"
}

variable "env_production" {
  type        = map(string)
  default     = {}
  description = "Map of production environment variables"
}

variable "env_preview" {
  type        = map(string)
  default     = {}
  description = "Map of preview environment variables"
}

variable "domains" {
  type        = list(string)
  default     = []
  description = "List of domains to attach to the project"
}

