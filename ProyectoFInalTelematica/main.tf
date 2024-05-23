provider "aws" {
  region = "us-east-1"
}

resource "aws_key_pair" "deployer_key" {
  key_name   = "llaveIac"
  public_key = file("~/.ssh/llaveIac.pub")
}

resource "aws_security_group" "web" {
  name        = "web_sg"
  description = "security gropu para acceso a puertos 22 y 80"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]

  }
}
resource "aws_instance" "web_server" {
  ami                         = "ami-0e001c9271cf7f3b9"
  instance_type               = "t2.micro"
  key_name                    = "llaveIac"
  security_groups             = [aws_security_group.web.name]
  associate_public_ip_address = true
  user_data                   = <<-EOF
        #!/bin/bash
        sudo apt update
        sudo apt install docker-compose -y
        git clone https://github.com/ChariiiCarrillo/PF_telematica.git
        cd PF_telematica/ProyectoFInalTelematica/front
        sudo docker build -t mywebserver .
        sudo docker run -d -p 80:80 mywebserver
        EOF

}
