resource "aws_lb_target_group" "privatelink_http_tg" {
    name = "privatelink-nlb-http-tg"
    port = 80
    protocol = "TCP"
    vpc_id = aws_vpc.privatelink_server_vpc.id
    target_type = "instance"
    # This block mapping is required if you specify the protocol as TCP,
    # even though an NLB DOES NOT support stickness at all.
    stickiness {
      type = "lb_cookie"
      enabled = false
    }
    tags = {
        Manager = "terraform"
    }
}

resource "aws_lb_target_group" "privatelink_https_tg" {
    name = "privatelink-nlb-https-tg"
    port = 443
    protocol = "TLS"
    vpc_id = aws_vpc.privatelink_server_vpc.id
    target_type = "instance"
    # This block mapping is required if you specify the protocol as TCP,
    # even though an NLB DOES NOT support stickness at all.
    # stickiness {
    #   type = "lb_cookie"
    #   enabled = false
    # }
    tags = {
        Manager = "terraform"
    }
}