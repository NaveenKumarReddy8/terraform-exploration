resource "aws_eip" "example" {
  domain = "vpc"
}

resource "aws_security_group" "security_group_payment_app" {
  name        = "payment_app"
  description = "security_group_payment_app"
  depends_on  = [aws_eip.example]

  tags = {
    Name  = "payment_app"
    Owner = "Naveen"
  }
}

resource "aws_vpc_security_group_ingress_rule" "ingress_443" {
  ip_protocol       = "tcp"
  from_port         = var.https_port
  to_port           = var.https_port
  cidr_ipv4         = var.cidr_block
  security_group_id = aws_security_group.security_group_payment_app.id
}

resource "aws_vpc_security_group_ingress_rule" "ingress_8080" {
  ip_protocol       = "tcp"
  from_port         = var.dev_port
  to_port           = var.dev_port
  cidr_ipv4         = var.cidr_block
  security_group_id = aws_security_group.security_group_payment_app.id
}

locals {
  cidr_eip_public_ip = "${aws_eip.example.public_ip}/32"
}

resource "aws_vpc_security_group_ingress_rule" "ingress_8443" {
  ip_protocol       = "tcp"
  from_port         = var.prod_port
  to_port           = var.prod_port
  cidr_ipv4         = local.cidr_eip_public_ip
  security_group_id = aws_security_group.security_group_payment_app.id
}

resource "aws_vpc_security_group_egress_rule" "egress_splunk" {
  ip_protocol       = "tcp"
  from_port         = var.splunk
  to_port           = var.splunk
  cidr_ipv4         = "0.0.0.0/0"
  security_group_id = aws_security_group.security_group_payment_app.id
}
