resource "aws_instance" "remote-app" {
  ami           = "ami-0d570f20c6111c4c4"
  instance_type = "t2.medium"

  tags = {
    Name = "Linux_Server_with-remotebackend"
  }
}
