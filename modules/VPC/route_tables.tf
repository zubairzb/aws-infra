resource "aws_route_table" "private_route_table" {
  vpc_id = aws_vpc.lg-core-reportportal-sandbox_VPC.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.nat.id
  }

  route {
    cidr_block = var.vpn_ip1
    gateway_id = data.aws_ec2_transit_gateway.RP_transit_gateway.id
  }

  route {
    cidr_block = var.vpn_ip2
    gateway_id = data.aws_ec2_transit_gateway.RP_transit_gateway.id
  }

  route {
    cidr_block = var.lgdop_ip1
    gateway_id = data.aws_ec2_transit_gateway.RP_transit_gateway.id
  }

  route {
    cidr_block = var.lgdop_ip2
    gateway_id = data.aws_ec2_transit_gateway.RP_transit_gateway.id
  }

  tags = {
    Name    = "private_route_table"
    Project = "LG Report Portal Sandbox"
  }

  lifecycle {
    ignore_changes = [route.tags] # modify this when change is needed for this resource
  }
}

resource "aws_route_table" "public_route_table" {
  vpc_id = aws_vpc.lg-core-reportportal-sandbox_VPC.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name    = "public_route_table"
    Project = "LG Report Portal Sandbox"
  }
}
