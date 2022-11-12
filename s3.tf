resource "aws_s3_bucket" "bucket" {
  bucket = "demowithtemi-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket" "mybucket" {
  bucket = "demowithtemi-buckett789"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}