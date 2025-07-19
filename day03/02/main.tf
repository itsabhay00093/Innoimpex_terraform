provider "aws" {
 region = "ap-south-1"
 profile = "innoimpex"
}

resource "aws_security_group" "ssh_sg" {
  name        = "ssh-sg"
  description = "Allow ssh"
  vpc_id      = "vpc-0ae75acd847e1d688"

  ingress {
    description = "ssh Access"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "All traffic out"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "ssh-sg"
  }
}

resource "aws_instance" "example" {
  ami           = "ami-0f918f7e67a3323f0"
  instance_type = "t2.micro"
  key_name      = "abhay"
  subnet_id     = "subnet-042a9fabf68a45d67"
  vpc_security_group_ids = [aws_security_group.ssh_sg.id]
/*
  user_data = <<-EOF
              #!/bin/bash
              sudo apt-get update -y
              sudo apt-get install -y wget zip
              EOF
*/
  tags = {
    Name = "Install-Wget-Zip"
  }
}

