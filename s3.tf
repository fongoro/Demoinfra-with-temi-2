resource "aws_s3_bucket" "bucket" {
  bucket = "demowithtemi-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket" "bucket" {
  bucket = "demowithtemi-buckett789"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}