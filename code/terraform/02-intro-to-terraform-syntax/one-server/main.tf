terraform {
  required_version = ">= 0.12, <= 0.13.4"
}

provider "aws" {
  region = "us-east-1"

  # Allow any 2.x version of the AWS provider
  version = "~> 2.0"
}

resource "aws_instance" "example" {
  ami           = "ami-2757f631"
  instance_type = "t2.nano"

  tags = {
    Name = "terraform-example"
  }
}

