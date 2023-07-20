resource "aws_instance" "web" {
  ami           = ami-0d570f20c6111c4c4
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}
