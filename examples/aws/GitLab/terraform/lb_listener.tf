resource "aws_lb_listener" "git_http_listener" {
    load_balancer_arn = aws_lb.git_web_lb.arn
    port = "80"
    protocol = "HTTP"
    default_action {
        type             = "redirect"
        redirect {
            port             = 443
            protocol         = "HTTPS"
            status_code      = "HTTP_301"
        }
        
    }
}
resource "aws_lb_listener" "git_https_listener" {
    load_balancer_arn = aws_lb.git_web_lb.arn
    port = "443"
    protocol = "HTTPS"
    certificate_arn = var.lb_cert_arn
    default_action {
        type = "forward"
        target_group_arn = aws_lb_target_group.git_http_tg.arn
    }
}
resource "aws_lb_listener" "git_ssh_listener" {
    load_balancer_arn = aws_lb.git_ssh_lb.arn
    port = "22"
    protocol = "TCP"
    default_action {
        type = "forward"
        target_group_arn = aws_lb_target_group.git_ssh_tg.arn
    }
}