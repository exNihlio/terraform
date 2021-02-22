resource "aws_lb_target_group" "flask_tg" {
    name = "flask-app-tg"
    port = "8000"
    protocol = "HTTP"
    target_type = "ip"
    vpc_id = aws_vpc.flaskapp_vpc.id
}