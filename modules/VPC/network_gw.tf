# Internet Gateway
resource "aws_eip" "nat_eip" {
  tags = {
    Name    = "NAT IP"
    Project = "LG Report Portal Sandbox"
  }
}

# NAT GW
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.lg-core-reportportal-sandbox_VPC.id
}

resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.nat_eip.id
  subnet_id     = aws_subnet.public_subnet_2.id

  tags = {
    Name    = "Public NAT Gateway"
    Project = "LG Report Portal Sandbox"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [
    aws_eip.nat_eip,
    aws_internet_gateway.igw
  ]

  lifecycle {
    ignore_changes = [allocation_id]
  }
}
