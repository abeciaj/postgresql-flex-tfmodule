resource "azurerm_postgresql_flexible_server" "flex_server" {
  name                   = "${local.name}-serv-${var.instance_number}"
  resource_group_name    = avar.rg_name
  location               = var.rg_location
  version                = var.versions
  administrator_login    = var.administrator_login
  administrator_password = var.administrator_password
  storage_mb             = var.storage_mb
  sku_name               = var.sku_name
}

resource "azurerm_postgresql_flexible_server_database" "flex_db" {
  name      = "${local.name}-db-${var.instance_number}"
  server_id = azurerm_postgresql_flexible_server.flex_server.id
  collation = var.collation
  charset   = var.charser

  # prevent the possibility of accidental data loss
  # lifecycle {
  #   prevent_destroy = true
  # }
}