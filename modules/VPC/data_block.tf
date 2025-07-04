data "aws_availability_zones" "available" {}

data "aws_ec2_transit_gateway" "RP_transit_gateway" {
  filter {
    name   = "tag:Project"
    values = ["LG Report Portal Sandbox"]
  }
}