resource "aws_security_group" "LG_Report_Portal_Sandbox_eks_sg" {
  vpc_id      = var.vpc_id
  name        = "LG_Report_Portal_Sandbox-EKS_SG"
  description = "Security group for bastion host"

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["100.97.64.0/25", "10.0.0.0/24"]
  }

  /*
  ingress {
    from_port   = 32350
    to_port     = 32350
    protocol    = "tcp"
    security_groups = [aws_security_group.LG_Report_Portal_Sandbox_alb_sg.id]
  }
  */

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name    = "LG_Report_Portal_Sandbox-EKS_SG"
    Project = "LG Report Portal Sandbox"
  }
}
