# terraform {
#   backend "s3" {
#     bucket         = "terraform-backend"
#     key            = "terraform.tfstate"
#     encrypt        = true
#     dynamodb_table = "terraform-table"
#   }
# }