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

