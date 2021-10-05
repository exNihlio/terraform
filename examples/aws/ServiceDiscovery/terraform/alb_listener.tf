resource "aws_lb_listener" "kibana_listener" {
    load_balancer_arn = aws_lb.kibana_lb.arn
    port = "80"
    protocol = "HTTP"
    default_action {
        type             = "forward"
        target_group_arn = aws_lb_target_group.kibana_tg.arn
    }
}
resource "aws_lb_listener" "flask_listener" {
    load_balancer_arn = aws_lb.flask_lb.arn
    port = "80"
    protocol = "HTTP"
    default_action {
        type             = "forward"
        target_group_arn = aws_lb_target_group.flask_tg.arn
    }
}