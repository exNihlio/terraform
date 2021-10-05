resource "aws_lb_target_group" "privatelink_https_tg" {
    name = "privatelink-nlb-https-tg"
    port = 443
    protocol = "TLS"
    vpc_id = aws_vpc.privatelink_server_vpc.id
    target_type = "instance"
    tags = {
        Manager = "terraform"
    }
}
