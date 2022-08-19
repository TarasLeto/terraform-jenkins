
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.5"
}

provider "aws" {
  region  = "us-east-1"
  access_key = var.my-access-key
  secret_key = var.my-secret-key
}

resource "aws_instance" "app_server" {
  ami           = "ami-0cff7528ff583bf9a"
  instance_type = "t2.micro"
  }
  
  

