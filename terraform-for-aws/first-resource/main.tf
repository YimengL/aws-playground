provider "aws" {
  region = "us-east-1"
  profile = "personal-aws"
}

resource "aws_vpc" "myvpc" {
  cidr_block = "10.0.0.0/16"
}