variable "cluster_role_name" {
  description = "Name for the EKS cluster IAM role"
  type        = string
}

variable "nodegroup_role_name" {
  description = "Name for the EKS nodegroup IAM role"
  type        = string
}

variable "oidc_provider_id" {
  description = "OIDC provider ID for the EKS cluster"
  type        = string
}

variable "eks_cluster" {
  description = "Cluster Name"
  type        = string
}

variable "aws_account_id" {
  description = "AWS Account ID"
  type        = string
}
