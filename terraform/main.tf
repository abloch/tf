provider "aws" {
  region = "us-east-1"
  profile = "kubiya"
}

output "bucket_name" {
  value = aws_s3_bucket.example.bucket
}

resource "aws_s3_bucket" "example" {
  bucket = "akivalue-test-bucket"
  tags = {
    Name        = "example-bucket"
    Environment = "Dev"
  }
}

resource "local_file" "example" {
  content = var.test
  filename = "${path.module}/example.txt"
}

resource "aws_s3_object" "example" {
  bucket       = aws_s3_bucket.example.bucket
  key          = "example.txt"
  source       = local_file.example.filename
  content_type = "text/plain"
  etag = md5(var.test)
}