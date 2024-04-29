module "vpc" {
  source         = "./modules/vpc"
  cidr_block     = var.cidr_block
  public_subnet1 = var.public_subnet1
  public_subnet2 = var.public_subnet2
  public_subnet3 = var.public_subnet3
