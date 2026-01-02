resource "aws_instance" "ec2instance" {
  ami           = "ami-0018df03456b303db"
  instance_type = "t3.micro"
}

resource "aws_eip" "elastic_ip" {
  /*instance = aws_instance.ec2instance.id*/


}