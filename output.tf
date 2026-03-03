# Output Pages project name
output "pages_project_name" {
  description = "Cloudflare Pages project name"
  value       = cloudflare_pages_project.frontend.name
}

# Output Pages default URL
output "pages_dev_url" {
  description = "Cloudflare Pages default URL"
  value       = "https://${cloudflare_pages_project.frontend.subdomain}.pages.dev"
}