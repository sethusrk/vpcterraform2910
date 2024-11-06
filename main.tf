resource "aws_vpc" "myvpc" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "myvpc"
  }
}

resource "aws_subnet" "pubsub1" {
  vpc_id     = var.vpc_id
  cidr_block = "10.0.1.0/24"
  availability_zone = "ap-south-1a"
  map_public_ip_on_launch = true
  
  tags = {
    Name = "pubsub1"
  }
}

resource "aws_subnet" "pubsub2" {
  vpc_id     = var.vpc_id
  cidr_block = "10.0.2.0/24"
  availability_zone = "ap-south-1b"
  map_public_ip_on_launch = true

  tags = {
    Name = "pubsub2"
  }
}

resource "aws_subnet" "prisub" {
  vpc_id     = var.vpc_id
  cidr_block = "10.0.3.0/24"
  availability_zone = "ap-south-1b"

  tags = {
    Name = "prisub"
  }
}

resource "aws_internet_gateway" "tigw" {
  vpc_id = var.vpc_id

  tags = {
    Name = "tigw"
  }
}

resource "aws_route_table" "pubrt" {
  vpc_id = var.vpc_id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = var.internet_gateway_id
  }

  tags = {
    Name = "pubrt"
  }
}

resource "aws_route_table_association" "pubsubasso1" {
  subnet_id      = var.Public_subnet1_id
  route_table_id = var.Public_Route_id
}

resource "aws_route_table_association" "pubsubasso2" {
  subnet_id      = var.Public_subnet2_id
  route_table_id = var.Public_Route_id
}

resource "aws_eip" "myeip" {
    domain   = "vpc"
}

resource "aws_nat_gateway" "tnat" {
  allocation_id = var.Allocation_id
  subnet_id     = var.Public_subnet1_id

  tags = {
    Name = "tnat"
  }
}

resource "aws_route_table" "prirt" {
  vpc_id = var.vpc_id

  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = var.Nat_gateway_id
  }

  tags = {
    Name = "prirt"
  }
}

resource "aws_route_table_association" "prisubasso" {
  subnet_id      = var.Private_subnet1_id
  route_table_id = var.Private_route_id
}

resource "aws_security_group" "publicsg" {
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "publicsg"
  }
}

resource "aws_security_group" "privatesg" {
  vpc_id = var.vpc_id
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "privatesg"
  }
}
