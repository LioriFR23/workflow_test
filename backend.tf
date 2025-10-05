terraform {
  required_version = ">= 1.0"
  required_providers {
    aws   = { source = "hashicorp/aws",   version = ">= 5.0" }
    local = { source = "hashicorp/local", version = ">= 2.4" }
  }
  backend "s3" {
    bucket = "firefly-tfstate-runner-350715735192"
    key    = "test_workflow/terraform.tfstate"
    region = "us-east-1"
  }
}
