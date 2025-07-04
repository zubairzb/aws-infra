output "cluster_role_arn" {
  value = aws_iam_role.demo_eks_cluster.arn
}

output "nodegroup_role_arn" {
  value = aws_iam_role.demo_eks_nodegroup.arn
}

output "ebs_csi_driver_role_arn" {
  value = aws_iam_role.ebs_csi_driver_role.arn
}

output "nodegroup_instance_profile_arn" {
  description = "ARN of the instance profile for EKS nodegroup"
  value       = aws_iam_instance_profile.nodegroup_instance_profile.arn
}

output "nodegroup_instance_profile_name" {
  description = "Name of the instance profile for EKS nodegroup"
  value       = aws_iam_instance_profile.nodegroup_instance_profile.name
}
