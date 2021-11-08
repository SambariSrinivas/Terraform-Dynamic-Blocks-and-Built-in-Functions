resource "aws_instance" "apache-webserver" {
  ami                         = var.ami-id
  subnet_id                   = var.subnet-id
  instance_type               = "t3.medium"
  security_groups = [var.sg-id]
  associate_public_ip_address = true
  user_data                   = fileexists("script.sh") ? file("script.sh") : null
  tags = {
    Name = "webserver"
  }
}
