provider "aws"   { region = "us-east-1" }

resource "aws_s3_object" "demo_text" {
  bucket  = "firefly-tfstate-runner-350715735192"
  key     = "test_workflow/demo.txt"
  content = "hello Firefly!"
}


# Terraform v 1.5.0, has made importing resources into Terraform much simpler.
# Rather than using the terraform import command, you can now simply add the
# block to your Terraform code and actually import resources during an apply.

import {
  to = aws_iam_user.ff-notif-test-20250929-152927
  id = "ff-notif-test-20250929-152927"
}

resource "aws_iam_user" "ff-notif-test-20250929-152927" {
  name = "ff-notif-test-20250929-152927"
}

