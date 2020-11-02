terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 2.70"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = var.region
}

resource "aws_instance" "ami-00010259430e82229" {
  ami           = "ami-00017101cbd0aceef"
  instance_type = "t2.micro"
}

