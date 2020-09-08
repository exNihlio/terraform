output "jump-host-ip" {
    value = aws_instance.jump-host-1.public_ip
}