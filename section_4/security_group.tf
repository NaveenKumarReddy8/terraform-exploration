resource "aws_security_group" "allow_tls" {
  name        = "terraform-firewall"
  description = "Allow TLS inbound traffic and all outbound traffic"

  tags = {
    "Name" = "allow_tls"
  }
}

resource "aws_vpc_security_group_ingress_rule" "inbound" {
  security_group_id = aws_security_group.allow_tls.id
  ip_protocol       = "tcp"
  from_port         = 80
  to_port           = 80
  cidr_ipv4         = "0.0.0.0/0"

  tags = {
    Name = "inbound"
  }
}

resource "aws_vpc_security_group_egress_rule" "outbound" {
  security_group_id = aws_security_group.allow_tls.id
  ip_protocol       = "-1"
  cidr_ipv4         = "0.0.0.0/0"

  tags = {
    Name = "Outbound"
  }
}