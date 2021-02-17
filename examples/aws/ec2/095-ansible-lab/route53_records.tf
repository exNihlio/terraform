resource aws_route53_record "sgw_1" {
    zone_id = aws_route53_zone.lab_zone.id
    name = "sgw-1"
    type = "A"
    ttl = "300"
    records = [ aws_instance.sgw_1.private_ip ]
}
## Web server records
resource aws_route53_record "web_1a" {
    zone_id = aws_route53_zone.lab_zone.id
    name = "web-1a"
    type = "A"
    ttl = "300"
    records = [ aws_instance.web_1a.private_ip ]
}

resource aws_route53_record "web_1b" {
    zone_id = aws_route53_zone.lab_zone.id
    name = "web-1b"
    type = "A"
    ttl = "300"
    records = [ aws_instance.web_1b.private_ip ]
}

resource aws_route53_record "web_1c" {
    zone_id = aws_route53_zone.lab_zone.id
    name = "web-1c"
    type = "A"
    ttl = "300"
    records = [ aws_instance.web_1c.private_ip ]
}
## App Server records
resource aws_route53_record "app_1a" {
    zone_id = aws_route53_zone.lab_zone.id
    name = "app-1a"
    type = "A"
    ttl = "300"
    records = [ aws_instance.app_1a.private_ip ]
}

resource aws_route53_record "app_1b" {
    zone_id = aws_route53_zone.lab_zone.id
    name = "app-1b"
    type = "A"
    ttl = "300"
    records = [ aws_instance.app_1b.private_ip ]
}

resource aws_route53_record "app_1c" {
    zone_id = aws_route53_zone.lab_zone.id
    name = "app-1c"
    type = "A"
    ttl = "300"
    records = [ aws_instance.app_1c.private_ip ]
}

## DB Server records
resource aws_route53_record "db_1a" {
    zone_id = aws_route53_zone.lab_zone.id
    name = "db-1a"
    type = "A"
    ttl = "300"
    records = [ aws_instance.db_1a.private_ip ]
}

resource aws_route53_record "db_1b" {
    zone_id = aws_route53_zone.lab_zone.id
    name = "db-1b"
    type = "A"
    ttl = "300"
    records = [ aws_instance.db_1b.private_ip ]
}

resource aws_route53_record "db_1c" {
    zone_id = aws_route53_zone.lab_zone.id
    name = "db-1c"
    type = "A"
    ttl = "300"
    records = [ aws_instance.db_1c.private_ip ]
}