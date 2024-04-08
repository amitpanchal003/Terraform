
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}
# resource "aws_instance" "web" {
#   ami           = "ami-080e1f13689e07408"
#   instance_type = "t3.micro"

#   tags = {
#     Name = "HelloWorld"
#   }
# }