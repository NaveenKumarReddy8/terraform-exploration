provider "aws" {
}

resource "aws_instance" "myec2" {
  ami           = "ami-0018df03456b303db"
  instance_type = "t3.micro"
  tags = {
    Name = "my-first-ec2" 
  }
}