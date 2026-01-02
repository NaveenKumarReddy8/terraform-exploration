terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">=6.27.0"
    }
  }
}


module "custom_module" {
  source = "../../modules/ec2"
  region = "ap-south-2"
  ami = "ami-0018df03456b303db"
  instance_type = "t3.micro"
}

resource "aws_eip" "myeip" {
  instance = module.custom_module.instance_id
  domain = "vpc"
}