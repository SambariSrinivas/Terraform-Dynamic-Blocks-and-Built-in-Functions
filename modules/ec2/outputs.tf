output "webserver-url" {
  description = "Web-server-url"
  value       = join("", ["http://", aws_instance.apache-webserver.public_ip])
}

output "Time-Date" {
  description = "Date and Time of the Execution"
  value       = timestamp()
}