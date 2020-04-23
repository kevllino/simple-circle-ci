terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "EuropaTech"

    workspaces {
      name = "events-firehose-streams-build"
    }
  }
}
provider "aws" {
  profile = "default"
  region = "eu-west-2"
}

resource "aws_s3_bucket" "bucket" {
  bucket = "firehose-delivery-stream-some"
  acl = "private"
}