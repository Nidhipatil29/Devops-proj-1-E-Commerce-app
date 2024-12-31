variable "region" {
    type = string
    default = "ap-south-1"
}

variable "name" {
  type        = string
  description = "Tag name"
}

variable "environment" {
  type        = string
  description = "Environment name"
}

variable "vpc_cidr" {
  type        = string
  description = "Public Subnet CIDR values"
}

variable "vpc_name" {
  type        = string
  description = "DevOps Project 1 VPC 1"
}

variable "cidr_public_subnet" {
  type        = list(string)
  description = "Public Subnet CIDR values"
}

variable "cidr_private_subnet" {
  type        = list(string)
  description = "Private Subnet CIDR values"
}

variable "ap_availability_zone" {
  type        = list(string)
  description = "Availability Zones"
}


variable "ec2_ami_id" {
  type        = string
  description = "DevOps Project 1 AMI Id for EC2 instance"
}

variable "kubernetes_version" {
  default     = 1.27
  description = "kubernetes version"
}

variable "cluster_name" {
  type        = string
  description = "DevOps Project 1 Cluster name"
}

