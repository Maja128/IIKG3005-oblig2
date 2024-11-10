variable "rg_name" {
  type        = string
  description = "The name of the resource group"
}

variable "rg_location" {
  type        = string
  description = "The location of the resource group"
}

variable "sa_name" {
  type        = string
  description = "The base name of the storage account"
  default     = "sa"
}
variable "sc_name" {
  type        = string
  description = "The name of the storage container"
  default     = "container"
}

variable "sb_name" {
  type        = string
  description = "The name of the storage blob"
  default     = "blob"
}