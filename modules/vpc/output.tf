# Output Block
output "publicsubnet1" {
  value = aws_subnet.publicsubnet1.id
}

output "vpc_id" {
  value = aws_vpc.vpc.id
}

output "security_group" {
  value = aws_security_group.security_group.id
}
