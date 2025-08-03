# App Service Plan
resource "azurerm_service_plan" "main" {
  name                = "${var.project_name}-plan"
  resource_group_name = azurerm_resource_group.main.name
  location            = azurerm_resource_group.main.location
  os_type             = "Linux"
  sku_name            = "B1"

  tags = {
    Name = "${var.project_name}-service-plan"
  }
}

# App Service
resource "azurerm_linux_web_app" "main" {
  name                = "${var.project_name}-app"
  resource_group_name = azurerm_resource_group.main.name
  location            = azurerm_service_plan.main.location
  service_plan_id     = azurerm_service_plan.main.id

  site_config {
    application_stack {
      docker_image     = "${azurerm_container_registry.main.login_server}/${var.project_name}-app"
      docker_image_tag = "latest"
    }
  }

  app_settings = {
    "NODE_ENV"                        = "production"
    "PORT"                            = var.container_port
    "DOCKER_REGISTRY_SERVER_URL"      = "https://${azurerm_container_registry.main.login_server}"
    "DOCKER_REGISTRY_SERVER_USERNAME" = azurerm_container_registry.main.admin_username
    "DOCKER_REGISTRY_SERVER_PASSWORD" = azurerm_container_registry.main.admin_password
    "WEBSITES_ENABLE_APP_SERVICE_STORAGE" = "false"
  }

  tags = {
    Name = "${var.project_name}-webapp"
  }
}
}
