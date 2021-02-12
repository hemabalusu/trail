resource "vault_aws_secret_backend" "aws" {
  access_key = "AKIA2TYAN3PJ2XGMTNVS"
  secret_key = "Si2/QutEIob3uRogBbpaUFczcUZXCD3JocRfHES/Y"
}
provider "aws" {
  region = "us-east-2"
}

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
}

