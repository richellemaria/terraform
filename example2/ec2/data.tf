data "aws_ami" "image_id" {
  executable_users = ["self"]
  most_recent      = true
  name_regex       = "ansible-lab-image"
  owners           = ["self"]

}