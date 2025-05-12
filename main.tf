terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws" 
      version = "~> 4.16" 
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0f9de6e2d2f067fca"
  instance_type = "t2.micro"
  key_name      = "KeyPair-Default"
  tags          = {
    Name = "PrimeiraInstancia"
  }
}