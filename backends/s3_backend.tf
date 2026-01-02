terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.27.0"
    }
  }
  backend "s3" {
    bucket = "terraform-backend-naveen-pemmana"
    region = "ap-south-2"
    key    = "terraform/statefile.tfstate"
  }
}

provider "aws" {
  region = "ap-south-2"
}

resource "aws_iam_user" "one_more_user" {
  name = "OneMoreUser"
  lifecycle {
    prevent_destroy = true
  }
}

resource "aws_iam_user" "naveenreddy" {
  name = "NaveenReddy"
}