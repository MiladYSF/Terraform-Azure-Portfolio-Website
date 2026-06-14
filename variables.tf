variable "cloudflare_api_token" {
  description = "Cloudflare API token for authentication"
  sensitive   = true
}

variable "cloudflare_zone_id" {
  description = "Cloudflare Zone ID for the domain"
  sensitive   = true
}