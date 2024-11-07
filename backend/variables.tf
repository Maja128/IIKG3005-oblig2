variable "rg_backend_name" {
  type        = string
  description = "The name of the resource group for the backend"
  default     = "maja-rg-backend-tfstate"
}

variable "rg_backend_location" {
  type        = string
  description = "The location of the resource group for the backend"
  default     = "westeurope"
}

variable "sa_backend_name" {
  type        = string
  description = "The base name of the storage account for the backend"
  default     = "sabetfs"
}

variable "sc_backend_name" {
  type        = string
  description = "The name of the storage container for the backend"
  default     = "tfstate"
}

variable "kv_backend_name" {
  type        = string
  description = "The base name of the key vault for the backend"
  default     = "kvbe"
}

variable "sa_backend_accesskey_name" {
  type        = string
  description = "The name of the storage account access key for the backend"
  default     = "sa-backend-accesskey"
}