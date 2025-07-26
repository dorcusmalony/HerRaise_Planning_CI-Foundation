# Azure Database for PostgreSQL
resource "azurerm_postgresql_flexible_server" "main" {
  name                   = "${var.project_name}-db"
  resource_group_name    = azurerm_resource_group.main.name
  location               = azurerm_resource_group.main.location
  version                = "15"
  administrator_login    = var.db_username
  administrator_password = var.db_password
  
  storage_mb = 32768
  sku_name   = "B_Standard_B1ms"

  backup_retention_days = 7
  
  tags = {
    Name = "${var.project_name}-database"
  }
}

# Database
resource "azurerm_postgresql_flexible_server_database" "main" {
  name      = "herraise_db"
  server_id = azurerm_postgresql_flexible_server.main.id
  collation = "en_US.utf8"
  charset   = "utf8"
}
