# VPC Variables

variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
}

variable "primary_cidr" {
  description = "CIDR block for the public subnet"
  type        = string
}

variable "secondary_cidr" {
  description = "CIDR block for the private subnet"
  type        = string
}

variable "private_cidr_block_1" {
  description = "CIDR block for the first private subnet"
  type        = string
}

variable "private_cidr_block_2" {
  description = "CIDR block for the second private subnet"
  type        = string
}

variable "public_cidr_block_1" {
  description = "CIDR block for the first public subnet"
  type        = string
}

variable "public_cidr_block_2" {
  description = "CIDR block for the second public subnet"
  type        = string
}

# IAM Roles

variable "cluster_role_name" {
  description = "Name of the IAM role for the EKS cluster"
  type        = string
}

variable "nodegroup_role_name" {
  description = "Name of the IAM role for the EKS nodegroup"
  type        = string
}

# EKS Cluster Configuration

variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
}

variable "kubernetes_version" {
  description = "Kubernetes version for the EKS cluster"
  type        = string
}

variable "node_group_version" {
  description = "Kubernetes version for the EKS node group"
  type        = string
}

variable "node_min_size" {
  description = "Minimum size for the node group"
  type        = number
}

variable "node_max_size" {
  description = "Maximum size for the node group"
  type        = number
}

variable "node_desired_size" {
  description = "Desired size for the node group"
  type        = number
}

# API Node Group

variable "api_node_group_name" {
  description = "Name of the API node group in EKS"
  type        = string
}

variable "api_node_group_new" {
  description = "Name of the new API node group in EKS"
  type        = string
}

variable "api_instance_type" {
  description = "Instance type for the API nodes"
  type        = list(string)
}

# DB Node Group

variable "db_node_group_name" {
  description = "Name of the DB node group in EKS"
  type        = string
}

variable "db_node_group_new" {
  description = "Name of the new DB node group in EKS"
  type        = string
}

variable "db_instance_type" {
  description = "Instance type for the DB nodes"
  type        = list(string)
}

# EC2 / Bastion

variable "bh_instance_type" {
  description = "Instance type for the bastion host"
  type        = string
}

variable "bh_ami" {
  description = "AMI ID for the bastion host instance"
  type        = string
}

# ACM / Domain

variable "domain_name" {
  description = "Domain name for the application"
  type        = string
}

# VPN IP Variables

variable "vpn_ip1" {
  description = "VPN IP address range 1"
  type        = string
}

variable "vpn_ip2" {
  description = "VPN IP address range 2"
  type        = string
}

# LGDOP IP Variables

variable "lgdop_ip1" {
  description = "LGDOP IP range 1"
  type        = string
}

variable "lgdop_ip2" {
  description = "LGDOP IP range 2"
  type        = string
}
