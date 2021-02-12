provider "aws" {
  region = "us-east-2"
  access_key = "AKIA2TYAN3PJ6VJ2W7EY"
  secret_key = "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"
}

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
}

