

resource "aws_vpc" "my_vpc" {
  cidr_block = var.vpc_cidr_block

  tags = {
    Name = var.vpc_name
  }
}

resource "aws_subnet" "webapp_subnet" {
  vpc_id     = aws_vpc.my_vpc.id
  cidr_block = var.webapp_subnet_cidr_block

  tags = {
    Name = var.web_app_subnet_name
  }
}


resource "aws_subnet" "db_subnet" {
  vpc_id     = aws_vpc.my_vpc.id
  cidr_block = var.db_subnet_cidr_block

  tags = {
    Name =var.db_subnet_name
  }
}

resource "aws_internet_gateway" "my_igw" {
  vpc_id = aws_vpc.my_vpc.id
}

resource "aws_route_table" "public_route_table" {
  vpc_id = aws_vpc.my_vpc.id

  route {
    cidr_block = var.web_app_route_internet_cidr_block
    gateway_id = aws_internet_gateway.my_igw.id
  }
}

resource "aws_route_table_association" "webapp_subnet_association" {
  subnet_id      = aws_subnet.webapp_subnet.id
  route_table_id = aws_route_table.public_route_table.id
}
