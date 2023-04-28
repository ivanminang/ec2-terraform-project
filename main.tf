# Build an EC2 using Terraform on aws
# Terraform Block 
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}
# Configure the aws Provider
provider "aws" {
  region = "us-west-2"
}
# create an ec2
resource "aws_instance" "my-ec2" {
  ami           = "ami-009c5f630e96948cb" # us-west-2
  instance_type = "t3.micro"
  tags = {
    Name = "my-ec2"
  }
}