resource "aws_vpc" "lg-core-reportportal-sandbox_VPC" {
  cidr_block           = var.primary_cidr
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name    = var.vpc_name
    Project = "LG Report Portal Sandbox"
  }
}

resource "aws_vpc_ipv4_cidr_block_association" "secondary" {
  vpc_id     = aws_vpc.lg-core-reportportal-sandbox_VPC.id
  cidr_block = var.secondary_cidr
}
