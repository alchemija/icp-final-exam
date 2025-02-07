variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
  default     = "main-eks-cluster"
}

provider "aws" {
  region = "eu-north-1" 
}

data "aws_availability_zones" "available" {
  state = "available"
}

data "aws_region" "current" {}

data "aws_caller_identity" "current" {}