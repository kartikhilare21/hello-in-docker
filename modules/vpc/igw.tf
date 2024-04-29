# Internet Gateway
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.vpc.id

  tags = {
    Name        = "pg-igw-us-east2-${terraform.workspace}"
    Maintainer  = "Terraform"
    Environment = "${terraform.workspace}"
  }
}
