#terraform settings block
terraform {
  required_version = ">= 1.2.0, < 2.0.0"
  required_providers {
    aws = {
      version = ">= 5.0.0"
      source = "hashicorp/aws"
    }
  }
}
