resource "aws_instance" "server" {
  ami           = "data.aws_ami.image_id.id"
  instance_type = "t2.medium"
  vpc_security_group_ids = [var.sg]

}

variable "sg"{}   #step 3 to use the information declare empty varibale and use it


output "private_ip"{
    value = aws_instance.server.private_ip
}
