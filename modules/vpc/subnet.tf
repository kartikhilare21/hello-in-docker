# Subnet Block
resource "aws_subnet" "publicsubnet1" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = "${var.public_subnet1}.0/24"

  tags = {
    Name        = "pg-publicsubnet1-us-east2-${terraform.workspace}"
    Maintainer  = "Terraform"
    Environment = "${terraform.workspace}"
  }
}

resource "aws_subnet" "publicsubnet2" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = "${var.public_subnet2}.0/24"

  tags = {
    Name        = "pg-publicsubnet2-us-east2-${terraform.workspace}"
    Maintainer  = "Terraform"
    Environment = "${terraform.workspace}"
  }
}

resource "aws_subnet" "publicsubnet3" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = "${var.public_subnet3}.0/24"

  tags = {
    Name        = "pg-publicsubnet3-us-east2-${terraform.workspace}"
    Maintainer  = "Terraform"
    Environment = "${terraform.workspace}"
  }
}

