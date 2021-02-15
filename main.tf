
provider "aws" {
  region = "us-east-2"
  access_key = "AKIA2TYAN3PJR6DYXJWQ"
  secret_key = "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"
}
data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}

