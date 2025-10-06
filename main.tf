provider "aws"   { region = "us-east-1" }

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
  content  = "Hello, World!\nThis is a simple text file created by Terraform."
  filename = "${path.module}/simple.txt"
}

output "file_path" {
  description = "Path to the created text file"
  value       = local_file.simple_txt.filename
}

output "file_content" {
  description = "Content of the created text file"
  value       = local_file.simple_txt.content
}

provider "local" {
}