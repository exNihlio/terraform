resource "aws_route53_record" "sgw1" {
    zone_id = aws_route53_zone.dev.id
    name = "sgw1.dev.io"
    ttl = 300
    type = "A"
    records = [ aws_instance.sgw1.private_ip ]
}

resource "aws_route53_record" "lxd-1" {
    zone_id = aws_route53_zone.dev.id
    name = "lxd-1.dev.io"
    ttl = 300
    type = "A"
    records = [ aws_instance.lxd-1.private_ip ]
}
