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

variable "container_port" {
  description = "Container port"
  type        = number
  default     = 80
}
