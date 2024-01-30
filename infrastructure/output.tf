output "dev_ip" {
  value = aws_instance.ansible[*].public_ip
}
