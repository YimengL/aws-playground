provider "aws" {
  region = "us-east-1"
  profile = "personal-aws"
}

resource "aws_instance" "ec2" {
  ami = "ami-0a1179631ec8933d7"
  instance_type = "t2.micro"
}

resource "aws_eip" "elasticeip" {
  instance = aws_instance.ec2.id
}

output "EIP" {
  value = aws_eip.elasticeip.public_ip
}