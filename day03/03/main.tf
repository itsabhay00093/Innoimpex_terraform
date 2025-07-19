provider "aws" {
 region = "ap-south-1"
 profile = "innoimpex"
}
resource "aws_instance" "example" {
  ami           = "ami-0f918f7e67a3323f0"
  instance_type = "t2.micro"
  key_name      = "abhay"
  tags = {
    Name = "test"
  }
}
