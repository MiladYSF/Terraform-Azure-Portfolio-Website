resource "azurerm_resource_group" "rg" {
  name     = "myTFresource"
  location = "westeurope"
}

resource "azurerm_storage_account" "tf" {
  name                     = "mdportfolio"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  access_tier             = "Cool"

  tags = {
    environment = "staging"
  }
}

resource "azurerm_storage_account_static_website" "pftf" {
  storage_account_id = azurerm_storage_account.tf.id
  error_404_document = "custom_not_found.html"
  index_document     = "index.html"
}

resource "cloudflare_dns_record" "www" {
  zone_id = var.cloudflare_zone_id
  name    = "www"
  content   = "mdportfolio.z6.web.core.windows.net"
  type    = "CNAME"
  proxied = true
  ttl    = 1
}