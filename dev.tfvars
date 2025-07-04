# VPC
vpc_name             = "demo-vpc"
primary_cidr         = "10.0.0.0/16"
secondary_cidr       = "100.64.0.0/16"
private_cidr_block_1 = "10.0.1.0/24"
private_cidr_block_2 = "10.0.2.0/24"
public_cidr_block_1  = "10.0.101.0/24"
public_cidr_block_2  = "10.0.102.0/24"
vpn_ip1              = "78.47.38.146/32"
vpn_ip2              = "78.47.125.116/32"
lgdop_ip1            = "178.63.47.108/32"
lgdop_ip2            = "78.47.229.62/32"

# IAM
cluster_role_name    = "demo-eks-cluster-role"
nodegroup_role_name  = "demo-eks-node-role"

# EKS Cluster
cluster_name         = "demo-cluster"
kubernetes_version   = "1.32"
node_group_version   = "1.32"
node_desired_size    = "1"
node_min_size        = "1"
node_max_size        = "2"

# API Node Group
api_node_group_name  = "api-node-group"
api_node_group_new   = false
api_instance_type     = "t3.medium"

# DB Node Group
db_node_group_name   = "db-node-group"
db_node_group_new    = false
db_instance_type     = "t3.medium"

# EC2
bh_instance_type     = "t3.micro"
bh_ami               = "ami-0c02fb55956c7d316"

# ACM
domain_name          = "dev.boni.co.in"
