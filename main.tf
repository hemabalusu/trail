provider "aws" {
  region = "us-east-2"
  access_key = "AKIA2TYAN3PJ2XGMTNVS"
  secret_key = "Si2/QutEIob3uRogBbpaUFczcUZXCD3JocRfHES/Y"
}

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
}

