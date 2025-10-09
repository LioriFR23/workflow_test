provider "aws"   { region = "us-east-1" }

resource "aws_s3_object" "demo_text" {
  bucket  = "lior-solution-engineering-terraform"
  key     = "test_workflow/demo.txt"
  content = "hello Firefly!"
}


# Terraform v 1.5.0, has made importing resources into Terraform much simpler.
# Rather than using the terraform import command, you can now simply add the
# block to your Terraform code and actually import resources during an apply.

import {
  to = aws_iam_user.demo-user-test-lior
  id = "demo-user-test-lior"
}

resource "aws_iam_user" "demo-user-test-lior" {
  name = "demo-user-test-lior"
}


provider "local" {
}

# Create a simple text file using Terraform
resource "local_file" "simple_txt" {
  content  = "Hello, World!\nThis is a simple text file created by Terraform.\nTimestamp: ${timestamp()}"
  filename = "${path.module}/output.txt"
}

# Output the file path
output "file_path" {
  value = local_file.simple_txt.filename
  description = "Path to the created text file"
}

# Output the file content
output "file_content" {
  value = local_file.simple_txt.content
  description = "Content of the created text file"
}