terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.53.0"
    }
  }
}

provider "aws" {
  # Configuration options
  access_key = "AKIATA4ZONTS5A4ZJDSU"
  secret_key = "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"
  region = "ap-south-1"
}

resource "aws_instance" "test" {
  ami           = ami-06984ea821ac0a879
  instance_type = "t2.micro"
 
  
  tags = {
    Name = "HelloWorld"
  }
}
