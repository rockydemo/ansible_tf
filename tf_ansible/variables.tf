variable "resource_group_name" {
  description = "Description for resource_group_name"
  type        = string
  default     = "poc-kv-playbook"
}

variable "name" {
  description = "Description for name"
  type        = string
  default     = "poc-kv"
}

variable "location" {
  description = "Description for location"
  type        = string
  default     = "eastus"
}

variable "tenant_id" {
  description = "Description for tenant_id"
  type        = string
  default     = "7a32773c-a86e-490d-ae40-5780e4791a65"
}

variable "sku_name" {
  description = "Description for sku_name"
  type        = string
  default     = "Standard"
}

variable "soft_delete_retention_days" {
  description = "Description for soft_delete_retention_days"
  type        = string
  default     = "7"
}

variable "object_id" {
  description = "Description for object_id"
  type        = string
  default     = "0caa02c9-7680-49e9-8fd7-436f61144bb8"
}

variable "key_permissions" {
  description = "Description for key_permissions"
  type        = string
  default     = "read"
}

variable "secret_permissions" {
  description = "Description for secret_permissions"
  type        = string
  default     = "read"
}

