resource "aws_security_group" "LG_Report_Portal_Sandbox_alb_sg" {
  vpc_id      = var.vpc_id
  name        = "LG_Report_Portal_Sandbox-alb_SG"
  description = "Security group for ALB"

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["172.23.32.159/32"]
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["172.23.32.205/32"]
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["172.23.135.0/24"]
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["172.31.139.0/24"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name    = "LG_Report_Portal_Sandbox-alb_SG"
    Project = "LG Report Portal Sandbox"
  }
}
