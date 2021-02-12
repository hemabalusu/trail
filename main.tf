provider "aws" {
  region = "us-east-2"
  access_key = "AKIA2"
  secret_key = "0Ufa68"
}

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
}

