provider "aws" {
  region     = "us-west-2"
  access_key = "AKIAQGCQDPPADU4PD2JO"
  secret_key = "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"
}
resource "aws_instance" "my_web_server" {
  ami           = "ami-03caad32a158f72db"
  instance_type = "t3.small"

  tags = {
    Name = "nginx-lb"
  }

  lifecycle {
    prevent_destroy = true
  }
}
