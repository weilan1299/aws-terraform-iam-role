terraform {
  backend "s3" {
    bucket = "my-unique-bucket-name-q1-2025"
    key    = "ec2/terraform.tfstate"
    region = "us-east-2"
  }
}
