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

variable "github_user" {
  description = "GitHub username for Atlantis"
  type        = string
}

variable "github_token" {
  description = "GitHub token for Atlantis"
  type        = string
  sensitive   = true
}

variable "github_webhook_secret" {
  description = "GitHub webhook secret for Atlantis"
  type        = string
  sensitive   = true
}