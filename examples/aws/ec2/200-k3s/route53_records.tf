resource "aws_route53_record" "dev-k3s-1" {
  zone_id = aws_route53_zone.dev.id
  name    = "k3s-1"
  type    = "A"
  ttl     = "300"
  records = [aws_instance.k3s-1.private_ip]
}

resource "aws_route53_record" "dev-k3s-2" {
  zone_id = aws_route53_zone.dev.id
  name    = "k3s-2"
  type    = "A"
  ttl     = "300"
  records = [aws_instance.k3s-2.private_ip]
}

resource "aws_route53_record" "dev-k3s-3" {
  zone_id = aws_route53_zone.dev.id
  name    = "k3s-3"
  type    = "A"
  ttl     = "300"
  records = [aws_instance.k3s-3.private_ip]
}