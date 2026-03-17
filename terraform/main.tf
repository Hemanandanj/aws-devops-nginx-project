provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "web1" {
  ami           = "ami-03caad32a158f72db"
  instance_type = "t2.micro"

  tags = {
    Name = "web-server-1"
  }
}

resource "aws_instance" "web2" {
  ami           = "ami-03caad32a158f72db"
  instance_type = "t2.micro"

  tags = {
    Name = "web-server-2"
  }
}

resource "aws_instance" "nginx_lb" {
  ami           = "ami-03caad32a158f72db"
  instance_type = "t3.small"

  tags = {
    Name = "nginx-lb"
  }
}
