#Name of the provider and region in which to deploy
provider "aws" {
  region = var.region
}

#beanstalk application to be deployed
resource "aws_elastic_beanstalk_application" "tftest" {
  name        = var.eb-app
  description = "my first application"
}

#beanstalk to environment to deploy in
resource "aws_elastic_beanstalk_environment" "tfenvtest" {
  name                = var.eb-env
  application         = aws_elastic_beanstalk_application.tftest.name
  solution_stack_name = var.sol-stack
  version_label       = var.app-version

  setting {
    namespace = "aws:autoscaling:launchconfiguration"
    name      = "IamInstanceProfile"
    value     = "aws-elasticbeanstalk-ec2-role"
  }
}

#application versioning
resource "aws_elastic_beanstalk_application_version" "default" {
  name        = var.app-version
  application = aws_elastic_beanstalk_application.tftest.name
  description = "application version created by terraform"
  bucket      = var.code-bucket
  key         = var.code-key
}
