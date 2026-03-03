# Cloudflare API Token (sensitive)
variable "cloudflare_api_token" {
  description = "Cloudflare API Token"
  type        = string
  sensitive   = true
}

# Cloudflare Account ID
variable "account_id" {
  description = "Cloudflare Account ID"
  type        = string
}

# GitHub repository owner
variable "github_owner" {
  description = "GitHub username"
  type        = string
}

# GitHub repository name
variable "github_repo" {
  description = "GitHub repository name"
  type        = string
}