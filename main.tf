terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-east-1"
  access_key = var.my_access_key
  secret_key = var.my_secret_key
}

resource "aws_instance" "webserver1" {

  ami             = var.image_id
  instance_type   = var.instance_type
  key_name        = var.key
  vpc_security_group_ids = [aws_security_group.my-sg.id]
  associate_public_ip_address = true
  root_block_device {
    volume_type = "gp2"
    volume_size = "8"
    delete_on_termination = true
}     
  
 connection {
       type        = "ssh"
       user        = "ubuntu"
       private_key = file("/my_terraform_key.pem")
       host        = self.public_ip
    }
 
   provisioner "remote-exec" {
       inline = [
      "sudo apt-get update -y", 
      "sudo apt-get install ca-certificates & curl & gnupg & lsb-release -y",

  "sudo mkdir -p /etc/apt/keyrings",
  "curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg",
  "sudo apt-get update -y",
  "sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin -y",
 "sudo service docker start",
 "sudo docker pull tarasleto96/gs-rest_service:lts",
 "sudo docker run -d -p 8080:8080  tarasleto96/gs-rest_service:lts"
]
  }
}
 

