terraform {
  backend "s3" {
    # Replace this with your bucket name!
    bucket         = "tremote-tf-state-bucket"
    key            = "remote/terraform.tfstate"
    region         = "us-east-1"

  }
}