terraform {
  required_version = "1.5.7"
}

provider "aws" {
  region = "eu-central-1"
}

data "aws_vpcs" "all_vpcs" {}

output "vpc_ids" {
  description = "List of all VPC IDs"
  value       = data.aws_vpcs.all_vpcs.ids
}

output "env" {
  description = "Environment name"
  value       = var.env
}
