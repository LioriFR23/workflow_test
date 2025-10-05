resource "aws_s3_object" "demo_text" {
  bucket  = "firefly-tfstate-runner-350715735192"
  key     = "test_workflow/demo.txt"
  content = "hello Firefly!"
}
terraform {
  required_providers {
  }
  required_version = ">= 1.0"
}

resource "local_file" "simple_txt" {
  content  = "This is a simple text file created by Terraform."
  filename = "${path.module}/simple.txt"
}

provider "local" {
}