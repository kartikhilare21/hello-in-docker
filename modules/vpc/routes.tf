# Routes an route assosications
resource "aws_route_table" "public_route_table" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name        = "pg-public-rt-us-east2-${terraform.workspace}"
    Maintainer  = "Terraform"
    Environment = "${terraform.workspace}"
  }
}


resource "aws_route_table_association" "publicsubnet1_association" {
  subnet_id      = aws_subnet.publicsubnet1.id
  route_table_id = aws_route_table.public_route_table.id
}

resource "aws_route_table_association" "publicsubnet2_association" {
  subnet_id      = aws_subnet.publicsubnet2.id
  route_table_id = aws_route_table.public_route_table.id
}

resource "aws_route_table_association" "publicsubnet3_association" {
  subnet_id      = aws_subnet.publicsubnet3.id
  route_table_id = aws_route_table.public_route_table.id
}

