provider "aws"   { region = "us-east-1" }
provider "local" {}

resource "aws_s3_object" "demo_text" {
  bucket  = "firefly-tfstate-runner-350715735192"
  key     = "test_workflow/demo.txt"
  content = "hello Firefly!"
}

terraform {
  required_version = ">= 1.0"
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.0"
    }
  }
}

resource "local_file" "example_text_file" {
  content  = "Hello, World!\nThis is a simple text file created by Terraform.\nTimestamp: ${timestamp()}"
  filename = "${path.module}/example.txt"
}

output "file_path" {
  description = "Path to the created text file"
  value       = local_file.example_text_file.filename
}

output "file_content" {
  description = "Content of the created text file"
  value       = local_file.example_text_file.content
}

provider "local" {
}