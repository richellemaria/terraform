#spot instance
resource "aws_spot_instance_request" "spot_worker" {
  ami           = data.aws_ami.image_id.id
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.allows_all.id]
  wait_for_fulfillment = true

  tags = {
    Name = "var.COMPONENT"
  }

   provisioner "remote-exec" {

    connection {
     type     = "ssh"
     user     = "centos"
     password = "DevOps321"
     host     = self.public_ip               #aws_instance.server.private_ip if provisioners will be outside the resource
  }

    inline = [
      "ansible-pull -U https://github.com/richellemaria/ansible.git -e ENV=dev -e COMPONENT=${var.COMPONENT} -e APP_VERSION= ${var.APP_VERSION} roboshop-pull.yml"
    ]

}

}


# resource "aws_instance" "server" {
#   ami           = data.aws_ami.image_id.id
#   instance_type = "t2.medium"
#   vpc_security_group_ids = [var.sg]

#   provisioner "remote-exec" {

#     connection {
#      type     = "ssh"
#      user     = "centos"
#      password = "DevOps321"
#      host     = self.public_ip     #aws_instance.server.private_ip if provisioners will be outside the resource
#   }

#     inline = [
#       "ansible-pull -U https://github.com/richellemaria/ansible.git -e ENV=dev -e COMPONENT=${var.COMPONENT} -e APP_VERSION= ${var.APP_VERSION} roboshop-pull.yml"
#     ]

# }

# }

# variable "sg"{}   #step 3 to use the information declare empty varibale and use it


# output "private_ip"{
#     value = aws_instance.server.private_ip
# }
