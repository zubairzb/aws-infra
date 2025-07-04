variable "primary_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "secondary_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "vpc_name" {
  description = "Name tag for the VPC"
  type        = string
}

variable "private_cidr_block_1" {
  description = "CIDR block for the public subnet"
  type        = string
}

variable "private_cidr_block_2" {
  description = "CIDR block for the public subnet"
  type        = string
}

variable "public_cidr_block_1" {
  description = "CIDR block for the public subnet"
  type        = string
}

variable "public_cidr_block_2" {
  description = "CIDR block for the public subnet"
  type        = string
}

variable "vpn_ip1" {
  description = "VPN IP address"
  type        = string
}

variable "vpn_ip2" {
  description = "VPN IP address"
  type        = string
}

variable "lgdop_ip1" {
  description = "LGDOP IP address"
  type        = string
}

variable "lgdop_ip2" {
  description = "LGDOP IP address"
  type        = string
}
