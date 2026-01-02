terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">=6.27.0"
    }
  }
}

provider "aws" {
  region = var.region
}

resource "aws_instance" "ec2" {
  ami           = var.ami
  instance_type = var.instance_type
}

output "instance_id" {
  value = aws_instance.ec2.id
}