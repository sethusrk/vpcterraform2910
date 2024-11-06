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

output "private_route_table_id" {
  value = aws_route_table.prirt.id
}

output "nat_gateway_id" {
  value = aws_nat_gateway.tnat.id
}

output "eip_allocation_id" {
  value = aws_eip.myeip.id
}

output "public_security_group_id" {
  value = aws_security_group.publicsg.id
}

output "private_security_group_id" {
  value = aws_security_group.privatesg.id
}

output "public_instance1_id" {
  value = aws_instance.publicinstance1.id
}

output "public_instance2_id" {
  value = aws_instance.publicinstance2.id
}

output "private_instance_id" {
  value = aws_instance.privateinstance.id
}