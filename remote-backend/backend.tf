terraform {
  backend "s3" {
    # Replace this with your bucket name!
    bucket         = "remote-tf-state-bucket"
    key            = "remote/terraform.tfstate"
    region         = "us-east-1"

  }
}