output "jump-host-ip" {
  value = aws_instance.sgw-1.public_ip
}