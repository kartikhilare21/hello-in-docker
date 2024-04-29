# VPC 
resource "aws_vpc" "vpc" {
  cidr_block           = var.cidr_block
  enable_dns_hostnames = true
  enable_dns_support   = true
  tags = {
    Name        = "pg-vpc-us-east2-${terraform.workspace}"
    Maintainer  = "Terraform"
    Environment = "${terraform.workspace}"
  }
}
