variable "rg_name" {
  type        = string
  description = "The name of the resource group"
  default     = "maja-rg-core-infrastructure"
}

variable "rg_location" {
  type        = string
  description = "The location of the resource group"
  default     = "westeurope"
}