resource "aws_instance" "server" {
  ami           = "ami-02edefb7f078d80d3"
  instance_type = "t2.medium"
  vpc_security_group_ids = [aws_security_group.allows_all.id]

}

