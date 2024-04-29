# provider.tf
variable "aws_region" {}

# modules/vpc/vpc.tf
variable "cidr_block" {}

# subnets
variable "public_subnet1" {}
variable "public_subnet2" {}
variable "public_subnet3" {}
