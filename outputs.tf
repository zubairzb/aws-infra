output "vpc_id" {
  value = module.vpc.vpc_id
}

output "private_1_subnet_id" {
  value = module.vpc.private_1_subnet_id
}

output "private_2_subnet_id" {
  value = module.vpc.private_2_subnet_id
}

output "security_group_id_alb" {
  value = module.security_group.security_group_id_alb
}

output "security_group_id_bastion" {
  value = module.security_group.security_group_id_bastion
}

output "security_group_id_eks" {
  value = module.security_group.security_group_id_eks
}

output "eks_cluster" {
  value = module.eks.eks_cluster
}

output "acm_certificate_arn" {
  value = module.acm.acm_certificate_arn
}

output "api_node_group_name" {
  value = module.eks.api_node_group_name
}
