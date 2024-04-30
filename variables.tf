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
variable "webapp_availability" {
  default = "us-east-1a"
}
variable "db_availability_main" {
  default = "us-east-1a"
}

variable "identifier" {
  default = "sql-instance-demo"
}
variable "engine" {
  default =  "mysql"
}
variable "engine_version" {
  default =  "8.0.28"
}
variable "instance_class" {
  default = "db.t3.micro"
}
variable "final_snap" {
  default = "final-snapshot"
}
variable "storagetype" {
  default = "gp2"
}
variable "allocated_storage" {
  default = 20
}
variable "multi_az" {
  default = false
}
variable "skip_final_snap" {
  default = true
}
variable "user_name" {
  default = "admin_root_user"
}
variable "public_access" {
  default =  false
}
variable "db_tag" {
  default ="db_instance"
}
variable "db_availability" {
  default = "us-east-1b"
}
variable "db_subnet_secondary_name" {
  default = "db_subnet_secondary"
}
variable "db_subnet_secandary_cidr_block" {
  description = "The CIDR block for the db subnet"
  type        = string
  default     = "10.0.3.0/24"
}
variable "database_Name" {
  default = "webapp_user"
}
variable "vpc_name" {
  type = string
  default = "webapp-vpc"
}
variable "parameter_name" {
  default = "character_set_server"
}
variable "sql_family" {
  default = "mysql8.0"
}
variable "db_subnet_group_tag" {
  default = "db_subnet_group"
}
variable "db_subnet_group_name" {
  default = "db_subnet_group"
}

variable "db-parameter-group_name" {
  default = "db-parameter-group"
}
variable "parameter_value" {
  default = "utf8"
}

variable "web_app_subnet_name" {
  type = string
  default = "webapp-subnet"
}

variable "web_app_route_internet_cidr_block" {
  type = string
  default = "0.0.0.0/0"
}