provider "aws"   { region = "us-east-1" }

resource "aws_s3_object" "demo_text" {
  bucket  = "lior-solution-engineering-terraform"
  key     = "test_workflow/demo.txt"
  content = "hello Firefly!"
}

resource "aws_s3_object" "demo_text1" {
  bucket  = "lior-solution-engineering-terraform"
  key     = "test_workflow/demo1.txt"
  content = "hello Firefly!"
}
