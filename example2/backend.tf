terraform {
  backend "s3" {
    # Replace this with your bucket name!
    bucket         = "remote-tf-state-bucket"
    key            = "module_example/terraform.tfstate"
    region         = "us-east-1"

  }
}

provider "aws"{
    region = "us-east-1"
}