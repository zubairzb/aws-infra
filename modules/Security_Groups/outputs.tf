output "security_group_id_bastion" {
  value = aws_security_group.LG_Report_Portal_Sandbox_bastion_sg.id
}

output "security_group_id_eks" {
  value = aws_security_group.LG_Report_Portal_Sandbox_eks_sg.id
}

output "security_group_id_alb" {
  value = aws_security_group.LG_Report_Portal_Sandbox_alb_sg.id
}
