resource "aws_route53_record" "nlb-client-1" {
    zone_id = aws_route53_zone.dev.id
    name = "nlb-client-1"
    type = "A"
    ttl = "300"
    records = [ aws_instance.nlb-client-1.private_ip ]
}

resource "aws_route53_record" "nlb-server-1" {
    zone_id = aws_route53_zone.dev.id
    name = "nlb-server-1"
    type = "A"
    ttl = "300"
    records = [ aws_instance.nlb-server-1.private_ip ]   
}