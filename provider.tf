# Tell Terraform which providers we need
terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"   # Official Cloudflare provider
      version = "~> 4.0"                  # Use version 4.x
    }
  }
}

# Configure Cloudflare provider
provider "cloudflare" {
  api_token = var.cloudflare_api_token    # Use token from terraform.tfvars
}