variable "vpc_id" {
  type = string
  default = "vpc-0dfa5e555b136d7c3"
}

variable "internet_gateway_id" {
  type = string
  default = "igw-0b720788039a91eff"
}

variable "Public_subnet1_id" {
  type = string
  default = "subnet-03e88c53b347c1fab"
}

variable "Public_subnet2_id" {
  type = string
  default = "subnet-01200c6227c00c5f2"
}

variable "Private_subnet1_id" {
  type = string
  default = "subnet-0f2093a5dfd26256c"
}

variable "Public_Route_id" {
  type = string
  default = "rtb-02381852c088ae643"
}

variable "Allocation_id" {
  type = string
  default = "eipalloc-005e2ca33585d3dce"
}

variable "Nat_gateway_id" {
  type = string
  default = "nat-0c9ece2474385ad2c"
}

variable "Private_route_id" {
  type = string
  default = "rtb-0edf2cc55d5f86f9e"
}