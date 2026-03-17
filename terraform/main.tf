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
