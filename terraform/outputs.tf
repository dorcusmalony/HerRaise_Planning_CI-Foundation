output "acr_login_server" {
  description = "ACR login server URL"
  value       = azurerm_container_registry.main.login_server
}

output "app_service_url" {
  description = "App Service URL"
  value       = "https://${azurerm_linux_web_app.main.default_hostname}"
}

output "resource_group_name" {
  description = "Resource group name"
  value       = azurerm_resource_group.main.name
}

output "container_registry_name" {
  description = "Container registry name"
  value       = azurerm_container_registry.main.name
}
}

output "container_registry_name" {
  description = "Container registry name"
  value       = azurerm_container_registry.main.name
}
