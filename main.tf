##############################################
# Create Cloudflare Pages Project (Frontend)
##############################################

resource "cloudflare_pages_project" "frontend" {

  account_id = var.account_id

  # Name of Pages project
  name = "gaurav-frontend"

  # GitHub production branch
  production_branch = "main"

  ###########################################
  # GitHub Integration
  ###########################################

  source {
    type = "github"

    config {
      owner                         = var.github_owner   # GitHub username
      repo_name                     = var.github_repo    # Repository name
      production_branch             = "main"
      deployments_enabled           = true               # Enable deployments
      production_deployment_enabled = true
    }
  }

  ###########################################
  # Build Configuration
  ###########################################

  build_config {

    root_dir = "terraform"

    # Static HTML site → no build command needed
    build_command   = null
    destination_dir = null
  }
}