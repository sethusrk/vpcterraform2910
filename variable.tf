variable "vpc_id" {
  type = string
  default = "vpc-0df9db200b84589c8"
}

variable "internet_gateway_id" {
  type = string
  default = "igw-03db108503c98b4d2"
}

variable "Public_subnet1_id" {
  type = string
  default = "subnet-0f09ffa8a128201f6"
}

variable "Public_subnet2_id" {
  type = string
  default = "subnet-0ecca49aa3356b063"
}

variable "Private_subnet1_id" {
  type = string
  default = "subnet-086c3f1228591752e"
}
