resource "aws_vpc" "demovpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name       = "kartik-vpc-us-east2-${terraform.workspace}"
    Maintainer = "Terraform"
    Environment = "${terraform.workspace}"
  }
}

resource "aws_internet_gateway" "igtw" {
  vpc_id = aws_vpc.demovpc.id
}

resource "aws_subnet" "subnet1" {
  vpc_id            = aws_vpc.demovpc.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "us-west-2a"
}

resource "aws_subnet" "subnet2" {
  vpc_id            = aws_vpc.demovpc.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = "us-west-2b"
}

resource "aws_subnet" "subnet3" {
  vpc_id            = aws_vpc.demovpc.id
  cidr_block        = "10.0.3.0/24"
  availability_zone = "us-west-2c"
  
}
resource "aws_network_acl" "demovpc" {
  vpc_id = aws_vpc.demovpc.id

  ingress {
    protocol   = "-1"
    rule_no    = 100
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 0
  }
  egress {
    protocol   = "-1"
    rule_no    = 100
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 0
  }
}
resource "aws_route_table" "PublicRT" {
  vpc_id = aws_vpc.demovpc.id
  route {
   cidr_block = "0.0.0.0/0"
   gateway_id = aws_internet_gateway.igtw.id
  }
}
resource "aws_route_table_association" "PublicRTassociation" {
  route_table_id = aws_route_table.PublicRT.id
  subnet_id = aws_subnet.subnet1.id
}
