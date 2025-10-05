provider "aws"   { region = "us-east-1" }
provider "local" {}

resource "aws_s3_object" "demo_text" {
  bucket  = "firefly-tfstate-runner-350715735192"
  key     = "test_workflow/demo.txt"
  content = "hello Firefly!"
}


 resource "aws_s3_object" "demo_text1" {
  bucket  = "firefly-tfstate-runner-350715735192"
  key     = "test_workflow/demo1.txt"
  content = "hello Firefly!"
}
