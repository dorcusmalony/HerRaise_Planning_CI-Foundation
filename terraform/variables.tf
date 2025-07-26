variable "azure_region" {
  description = "Azure region for resources"
  type        = string
  default     = "East US"
}

variable "environment" {
  description = "Environment name"
  type        = string
  default     = "dev"
}

variable "project_name" {
  description = "Project name"
  type        = string
  default     = "herraise"
}

variable "resource_group_name" {
  description = "Resource group name"
  type        = string
  default     = "HerRaise_RG"
}

variable "registry_name" {
  description = "Container registry name"
  type        = string
  default     = "herraise"
}

variable "db_username" {
  description = "Database username"
  type        = string
  default     = "herraise_user"
}

variable "db_password" {
  description = "Database password"
  type        = string
  sensitive   = true
}

variable "container_port" {
  description = "Container port"
  type        = number
  default     = 3000
}
