resource "aws_s3_bucket" "bucket" {
  bucket = "10weekchallengetest-project-bucket"
  acl    = "private"

  tags = {
    Name = "Week1-S3"
  }
}
