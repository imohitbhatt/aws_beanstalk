# backend configuration of the module to store tfstate file in the aws s3 object
terraform {
  backend "s3" {
    bucket = "myapp-tfstate-s3"
    key    = "demo/aws-beanstalk/terraform.tfstate"
    region = "ap-south-1"
  }
}