output "vpc_id" {
  value = aws_vpc.myvpc.id
}

output "public_subnet1_id" {
  value = aws_subnet.pubsub1.id
}

output "public_subnet2_id" {
  value = aws_subnet.pubsub2.id
}

output "private_subnet_id" {
  value = aws_subnet.prisub.id
}

output "internet_gateway_id" {
  value = aws_internet_gateway.tigw.id
}

output "public_route_table_id" {
  value = aws_route_table.pubrt.id
}

output "eip_allocation_id" {
  value = aws_eip.myeip.id
}

output "nat_gateway_id" {
  value = aws_nat_gateway.tnat.id
}

output "private_route_table_id" {
  value = aws_route_table.prirt.id
}
