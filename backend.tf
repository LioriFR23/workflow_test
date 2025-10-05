terraform {
  backend "s3" {
    bucket = "zorg-sandbox-s3-tfbucket-aws-provider"
    key    = "test_workflow/terraform.tfstate"
    region = "us-east-1"
  }
}