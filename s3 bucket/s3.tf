resource "aws_s3_bucket" "xyzsri123" {
  bucket = "xyzsri123"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}


resource "aws_s3_bucket_object" "object" {
  bucket = aws_s3_bucket.xyzsri123.id
  key    = "sri.txt"
  source = "/Users/dussa/OneDrive/Desktop/terra/terraform_imp/sri.txt"
}

