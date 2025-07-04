terraform {
  backend "s3" {
    bucket = "terraform-state-cs-task"
    key    = "terraform.tfstate"
    region = "eu-central-1"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.70.0" # Added version 5.70.0 because the latest provider version 5.71.0 is causing checksum issue
    }
  }
}

provider "aws" {
  region = "eu-central-1"
}

/* module "vpc" {
  source         = "./modules/VPC"
  vpc_name       = var.vpc_name
  primary_cidr   = var.primary_cidr
  secondary_cidr = var.secondary_cidr

  private_cidr_block_1 = var.private_cidr_block_1
  private_cidr_block_2 = var.private_cidr_block_2
  public_cidr_block_1  = var.public_cidr_block_1
  public_cidr_block_2  = var.public_cidr_block_2

  vpn_ip1   = var.vpn_ip1
  vpn_ip2   = var.vpn_ip2
  lgdop_ip1 = var.lgdop_ip1
  lgdop_ip2 = var.lgdop_ip2
}

module "security_group" {
  source = "./modules/security_group"
  vpc_id = module.vpc.vpc_id
} */

module "iam" {
  source             = "./modules/IAM"
  cluster_role_name  = var.cluster_role_name
  nodegroup_role_name = var.nodegroup_role_name
  eks_cluster        = module.eks.eks_cluster
  oidc_provider_id   = module.eks.oidc_provider_id
  aws_account_id     = module.eks.aws_account_id
}

/* module "eks" {
  source = "./modules/EKS"

  cluster_name       = var.cluster_name
  kubernetes_version = var.kubernetes_version
  node_group_version = var.node_group_version

  private_subnet_id = [module.vpc.private_1_subnet_id, module.vpc.private_2_subnet_id]
  cluster_role_arn  = module.iam.cluster_role_arn
  security_group_id_eks = [module.security_group.security_group_id_eks]

  api_node_group_name     = var.api_node_group_name
  api_node_group_new      = var.api_node_group_new
  api_node_role_arn       = module.iam.nodegroup_role_arn
  api_node_desired_size   = var.api_node_desired_size
  api_node_min_size       = var.api_node_min_size
  api_node_max_size       = var.api_node_max_size
  api_instance_type       = var.api_instance_type

  db_node_group_name     = var.db_node_group_name
  db_node_group_new      = var.db_node_group_new
  db_node_role_arn       = module.iam.nodegroup_role_arn
  db_node_desired_size   = var.db_node_desired_size
  db_node_min_size       = var.db_node_min_size
  db_node_max_size       = var.db_node_max_size
  db_instance_type       = var.db_instance_type
}

module "ec2" {
  source = "./modules/EC2"

  instance_type = var.bh_instance_type
  ami           = var.bh_ami
  subnet_id     = module.vpc.private_1_subnet_id
  security_group_ids = ["${module.security_group.security_group_id_bastion}"]
  key_pair_name      = module.ec2.key_name
}

module "acm" {
  source      = "./modules/ACM"
  domain_name = var.domain_name
}

module "alb" {
  source = "./modules/ALB"

  security_group_id  = module.security_group.security_group_id_alb
  private_subnet_id  = [module.vpc.private_1_subnet_id, module.vpc.private_2_subnet_id]
  api_node_group_name = module.eks.api_node_group_name
  certificate_arn     = module.acm.acm_certificate_arn
  vpc_id              = module.vpc.vpc_id
}
*/ 