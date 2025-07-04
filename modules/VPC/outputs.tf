output "vpc_id" {
  value = aws_vpc.lg-core-reportportal-sandbox_VPC.id
}

output "internet_gateway_id" {
  value = aws_internet_gateway.igw.id
}

output "nat_gateway_id" {
  value = aws_nat_gateway.nat.id
}

output "nat_eip" {
  value = aws_eip.nat_eip.public_ip
}

output "public_1_subnet_id" {
  value = aws_subnet.public_subnet_1.id
}

output "public_2_subnet_id" {
  value = aws_subnet.public_subnet_2.id
}

output "private_1_subnet_id" {
  value = aws_subnet.private_subnet_1.id
}

output "private_2_subnet_id" {
  value = aws_subnet.private_subnet_2.id
}

output "public_route_table_id" {
  value = aws_route_table.public_route_table.id
}

output "private_route_table_id" {
  value = aws_route_table.private_route_table.id
}

output "public_route_table_association_1_id" {
  value = aws_route_table_association.public_1.id
}

output "public_route_table_association_2_id" {
  value = aws_route_table_association.public_2.id
}

output "private_route_table_association_1_id" {
  value = aws_route_table_association.private_1.id
}

output "private_route_table_association_2_id" {
  value = aws_route_table_association.private_2.id
}

output "RP_transit_gateway_id" {
  value = data.aws_ec2_transit_gateway.RP_transit_gateway.id
}
