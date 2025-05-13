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
 # user_data     = <<-EOF
 #                    #!/bin/bash
 #                    cd /home/ubuntu
 #                    echo "<h1>Feito com Terraform</h1>" > index.html
 #                    nohup busybox httpd -f -p 8080 &
 #                     EOF
  key_name      = "KeyPair-Default"
  tags          = {
    Name = "TesteAWS"
  }
}