resource "aws_instance" "app_server" {
  ami           = "ami-02edefb7f078d80d3"
  instance_type = "t2.medium"
  vpc_security_group_ids = ["aws_security_group.allow_allow.id"]

  tags = {
    Name = "Terraform"
  }
}


#security group

resource "aws_security_group" "allow_all" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"

  ingress {
    description = "TLS from VPC"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_tls"
  }
}