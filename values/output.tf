terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.27.0"
    }
  }
}

provider "aws" {
  region = "ap-south-2"
}

resource "aws_instance" "ec2" {
  ami = "ami-0018df03456b303db"
  instance_type = "t3.micro"

  tags = {
    "Name" = "my_micro_ec2_instance"
  }
}

output "public_ip" {
  value = aws_instance.ec2.public_ip
}