resource "aws_lb" "flask_lb" {
    name = "flask-lb"
    internal = "false"
    load_balancer_type = "application"
    subnets = [aws_subnet.sub_pub_1.id, aws_subnet.sub_pub_2.id]
    security_groups = [aws_security_group.alb_flaskapp_public_sg.id]
}