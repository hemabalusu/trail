provider "aws" {
  region = "us-east-2"
  access_key = "AKIA2TYAN3PJR6DYXJWQ"
  secret_key = "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"
}

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "Mainhemavpc"
  }
}


resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "Mainhema-su-et"
  }
}
resource "aws_ami_from_instance" "example" {
  name               = "terraform-example"
  source_instance_id = "ami-0ebc8f6f580a04647"
}

