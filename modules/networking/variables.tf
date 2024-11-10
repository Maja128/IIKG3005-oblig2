variable "rg_name" {
  type        = string
  description = "The name og the resource group"
}

variable "rg_location" {
  type        = string
  description = "The location of the resource group"
}

variable "nsg_name" {
  type        = string
  description = "The name of the network security group"
  default     = "nsg"
}

variable "vnet_name" {
  type        = string
  description = "The name of the virtual network"
  default     = "vnet"
}

variable "subnet_name" {
  type        = string
  description = "The name of the subnet"
  default     = "subnet"
}