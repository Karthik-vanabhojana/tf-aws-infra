
resource "aws_db_parameter_group" "db_parameter_group" {
  name        = var.db-parameter-group_name
  family      = var.sql_family
  description = "RDS parameter group for database"
  parameter {
    name  = var.parameter_name
    value = var.parameter_value
  }
}

resource "aws_db_subnet_group" "db_subnet_group" {
  name        = var.db_subnet_group_name
  description = "RDS subnet group for database"
  subnet_ids  = [
    aws_subnet.db_subnet.id,
    aws_subnet.db_subnet_secondary.id
  ]

  tags = {
    Name = var.db_subnet_group_tag
  }
}
resource "random_password" "password" {
  length           = 16
  special          = false
}


resource "aws_db_instance" "db_instance" {
  db_name = var.database_Name
  identifier                  =var.identifier
  engine                    =var.engine
  engine_version            =var.engine_version
  instance_class            = var.instance_class
  username                  = var.user_name
  password                  = random_password.password.result
  parameter_group_name      = aws_db_parameter_group.db_parameter_group.name
  allocated_storage         = var.allocated_storage
  storage_type              = var.storagetype
  multi_az                  = var.multi_az
  skip_final_snapshot       = var.skip_final_snap
  final_snapshot_identifier = var.final_snap
  publicly_accessible       =var.public_access
  db_subnet_group_name      = aws_db_subnet_group.db_subnet_group.name
#  vpc_security_group_ids    = [aws_security_group.database.id]
  storage_encrypted         = true


  tags = {
    Name = var.db_tag
  }
}

