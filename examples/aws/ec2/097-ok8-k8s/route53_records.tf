resource "aws_route53_record" "okd-node-1" {
    zone_id = aws_route53_zone.dev.id
    name = "okd-node-1"
    type = "A"
    ttl = "300"
    records = [ aws_instance.okd-node-1.private_ip ]
}

resource "aws_route53_record" "dev-es2" {
    zone_id = aws_route53_zone.dev.id
    name = "okd-node-2"
    type = "A"
    ttl = "300"
    records = [ aws_instance.okd-node-2.private_ip ]   
}

resource "aws_route53_record" "dev-es3" {
    zone_id = aws_route53_zone.dev.id
    name = "okd-node-3"
    type = "A"
    ttl = "300"
    records = [ aws_instance.okd-node-3.private_ip ]  
}