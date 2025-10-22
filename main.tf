terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.17.0"
    }
  }
}

provider "aws" {
  region = "ap-northeast-1"
}

resource "aws_vpc" "myvpc" {
  cidr_block = "10.0.0.0/16"
}


resource "aws_instance" "demo" {
  ami           = "ami-070e0d4707168fc07"
  instance_type = "t3.micro"
  key_name = "MyKeyPair"

  tags = {
    Name = "HelloWorld"
  }
}