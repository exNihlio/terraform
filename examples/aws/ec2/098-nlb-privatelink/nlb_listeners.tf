# resource "aws_lb_listener" "privatelink_http" {
#     load_balancer_arn = aws_lb.nlb_private_link.arn
#     port = 80
#     protocol = "TCP"
#     default_action {
#       type = "forward"
#       target_group_arn = aws_lb_target_group.privatelink_http_tg.arn
#     }
# }

resource "aws_lb_listener" "privatelink_https" {
    load_balancer_arn = aws_lb.nlb_private_link.arn
    port = 443
    protocol = "TLS"
    ssl_policy = "ELBSecurityPolicy-2016-08"
    certificate_arn = data.aws_acm_certificate.star_nlb_server.arn
    default_action {
      type = "forward"
      target_group_arn = aws_lb_target_group.privatelink_https_tg.arn
    }
}