resource "aws_route53_record" "nlb-client-1" {
    zone_id = aws_route53_zone.dev.id
    name = "nlb-client-1"
    type = "A"
    ttl = "300"
    records = [ aws_instance.nlb-client-1.private_ip ]
}

resource "aws_route53_record" "privatelink" {
    zone_id = aws_route53_zone.dev.id
    name = "privatelink"
    type = "CNAME"
    ttl = "300"
    records = [ aws_vpc_endpoint.privatelink.dns_entry[0]["dns_name"] ]
    depends_on = [aws_vpc_endpoint.privatelink, 
                  aws_vpc_endpoint_service.privatelink_service]   
}

resource "aws_route53_record" "nlb-server-1" {
    zone_id = aws_route53_zone.server.id
    name = "nlb-server-1"
    type = "A"
    ttl = "300"
    records = [ aws_instance.nlb-server-1.private_ip ]   
}

resource "aws_route53_record" "nlb-server-2" {
    zone_id = aws_route53_zone.server.id
    name = "nlb-server-2"
    type = "A"
    ttl = "300"
    records = [ aws_instance.nlb-server-2.private_ip ]   
}

# Server
resource "aws_route53_record" "nlb-lb" {
    zone_id = aws_route53_zone.server.id
    name = "lb"
    type = "CNAME"
    ttl = "300"
    records = [ aws_lb.nlb_private_link.dns_name ]   
}