#variable for specifying the deployment region
variable "region" {
  default = "ap-south-1"
  type = string
}     
#name of the aws beanstalk application
variable "eb-app" {
  description = "Name of the application"
  type = string
}
#name of the aws beanstalk environment
variable "eb-env" {
  description = "Name of the environment"
  type = string
}
#aws solution stack name; can be found from https://docs.aws.amazon.com/elasticbeanstalk/latest/platforms/platform-history-python.html
variable "sol-stack" {
  description = "Solution stack type"
  type = string
}
#unique name for the s3 bucket which stores the source code to be deployed on aws beanstalk
variable "code-bucket" {
  description = "Unique AWS bucket name"
  type = string
}
#path of the object inside the aws s3
variable "code-key" {
  description = "path to the object"
  type = string
}

#version of the app which is to be deployed
variable "app-version" {
  description = "version of the application in the beanstalk to be deployed"
  type = string
}