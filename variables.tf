variable "provider_region" {
  type = string
}
variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "webapp_subnet_cidr_block" {
  description = "The CIDR block for the webapp subnet"
  type        = string
  default     = "10.0.1.0/24"
}
variable "db_subnet_name" {
  type = string
  default =  "db-subnet"
}
variable "db_subnet_cidr_block" {
  description = "The CIDR block for the db subnet"
  type        = string
  default     = "10.0.2.0/24"
}
variable "vpc_name" {
  type = string
  default = "webapp-vpc"
}

variable "web_app_subnet_name" {
  type = string
  default = "webapp-subnet"
}

variable "web_app_route_internet_cidr_block" {
  type = string
  default = "0.0.0.0/0"
}