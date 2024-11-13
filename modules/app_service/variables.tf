variable "rg_name" {
  type        = string
  description = "The name of the reource group"
}

variable "rg_location" {
  type        = string
  description = "The location of the resource group"
}

variable "service_plan_name" {
  type        = string
  description = "The name of the service plan"
  default     = "service-plan"
}