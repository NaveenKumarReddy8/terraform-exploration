
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.27.0"
    }
  }
}

provider "aws" {
  region = "ap-south-2"
}


variable "environment" {
  type    = string
  default = "DEV"
}

resource "aws_instance" "my_ec2" {
  ami           = "ami-0018df03456b303db"
  instance_type = var.environment == "DEV" ? "t3.micro" : "t3.small"
}

