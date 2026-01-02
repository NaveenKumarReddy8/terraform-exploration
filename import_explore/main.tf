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


import {
    to = aws_s3_bucket.mys3
    id = "terraform-backend-naveen-pemmana"
}