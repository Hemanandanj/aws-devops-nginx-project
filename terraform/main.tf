provider "aws" {
  region     = "us-west-2"
  access_key = "AKIAQGCQDPPADU4PD2JO"
  secret_key = "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"
}

resource "aws_instance" "web1" {
  ami           = "ami-03caad32a158f72db"
  instance_type = "t3.small"
  key_name      = "hema-lb-key"

  tags = {
    Name = "web-server-1"
  }
}

resource "aws_instance" "web2" {
  ami           = "ami-03caad32a158f72db"
  instance_type = "t3.small"
  key_name      = "hema-lb-key"

  tags = {
    Name = "web-server-2"
  }
}

resource "aws_instance" "nginx_lb" {
  ami           = "ami-03caad32a158f72db"
  instance_type = "t3.small"
  key_name      = "hema-lb-key"

  tags = {
    Name = "nginx-lb"
  }
}
