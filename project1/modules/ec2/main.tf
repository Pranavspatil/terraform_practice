provider "aws" {
  region = var.region
}

resource "aws_instance" "demo1" {

    ami = var.ami
    instance_type = var.instance_type
    key_name = var.key_name
    security_groups = [ aws_security_group.allow_ssh.name ]

     provisioner "remote-exec" {
    inline = [
       "sudo apt update -y",
    "sudo apt install -y apache2",
    "sudo systemctl start apache2",
    "sudo systemctl enable apache2"
    ]
  }

  connection {
    type        = "ssh"
    user        = var.ssh_user
    private_key = file(var.private_key)
    host        = self.public_ip
  }

  tags = {
    Name = "Terraform-EC2"
  }

   }