provider "aws" {
  profile = "default"
  region = "eu-west-2"
}

resource "aws_s3_bucket" "bucket" {
  bucket = "firehose-delivery-stream-some"
  acl = "private"
}