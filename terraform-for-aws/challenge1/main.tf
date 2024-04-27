provider "aws" {
  region = "us-east-1"
  profile = "personal-aws"
}

resource "aws_vpc" "challenge1vpc" {
  cidr_block = "192.168.0.0/24"
  tags = {
    Name = "TerraformVPC"
  }
}