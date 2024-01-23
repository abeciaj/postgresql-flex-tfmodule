variable "rg_name" {
  type        = string
  description = "Existing Resource Group Name"
}

variable "rg_location" {
  type        = string
  description = "Resource Group Location"
}

variable "project_name" {
  type        = string
  description = "Resource Name"
}

variable "instance_number" {
  type        = string
  description = "Resource number"
  default     = "01"
}

variable "administrator_login" {
  type        = string
  description = "Admin Username"
  default     = "adminuser"
}

variable "administrator_password" {
  type        = string
  description = "Admin Password"
  default     = "Default_P@ssw0rd123"
}

variable "versions" {
  type        = string
  description = "DB Version"
  default     = "12"
}

variable "storage_mb" {
  type        = number
  description = "Storage Size"
  default     = 32768
}

variable "sku_name" {
  type        = string
  description = "Sku Name"
  default     = "GP_Standard_D4s_v3"
}

variable "collation" {
  type        = string
  description = "Collation"
  default     = "en_US.utf8"
}

variable "charser" {
  type        = string
  description = "Charset"
  default     = "utf8"
}