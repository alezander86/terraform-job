terraform {
  required_version = "1.5.7"
}

provider "aws" {
  region = var.region
}

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.54.1"
    }
}

data "aws_vpcs" "all_vpcs" {}

output "vpc_ids" {
  description = "List of all VPC IDs"
  value       = data.aws_vpcs.all_vpcs.ids
}
