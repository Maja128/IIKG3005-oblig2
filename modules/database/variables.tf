variable "rg_name" {
  type        = string
  description = "The name of the resource group"
}

variable "rg_location" {
  type        = string
  description = "The location of the resource group"
}

variable "mssql_server_name" {
  type        = string
  description = "The name of the ms sql server"
  default     = "maja-mssql-server"
}

variable "db_name" {
  type        = string
  description = "The name of the ms sql database"
  default     = "maja-mssql-db"
}