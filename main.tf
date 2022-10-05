
resource "aws_instance" "appserver1" {

  ami             = var.imageid
  instance_type   = var.instancetype
  key_name        = var.key
  security_groups = [aws_security_group.allow_all.name]


  provisioner "remote-exec" {

    connection {
       type        = "ssh"
       user        = "ubuntu"
       private_key = file(var.privatekeypath)
       host        = self.public_ip
    }

    inline = [
      "sudo apt-get update",
      "sudo apt-get install tomcat7 -y"
    ]
  }
}
  

