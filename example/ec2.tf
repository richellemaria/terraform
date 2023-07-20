resource "aws_instance" "web" {
  ami           = "ami-02edefb7f078d80d3"
  instance_type = "t2.medium"

  tags = {
    Name = "Terraform"
  }
}
