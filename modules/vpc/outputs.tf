output "subnet-id" {
  value = aws_subnet.subnet-1.id
}
output "sg-id" {
  value = aws_security_group.sg.id
}

output "ami-id" {
  value = data.aws_ssm_parameter.webserver-ami.value
}