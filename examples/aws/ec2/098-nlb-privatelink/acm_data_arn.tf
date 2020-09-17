data "aws_acm_certificate" "star_nlb_server" {
    domain = "*.nlb.server"
}