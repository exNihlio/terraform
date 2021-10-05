resource "aws_lb_target_group" "kibana_tg" {
    name = "kibana-tg"
    port = "5601"
    protocol = "HTTP"
    target_type = "ip"
    deregistration_delay = 30
    health_check {
      path = "/status"
      interval = 120
      unhealthy_threshold = 5
    }
    vpc_id = aws_vpc.es_vpc.id
}
resource "aws_lb_target_group" "flask_tg" {
    name = "flask-app-tg"
    port = "8000"
    protocol = "HTTP"
    target_type = "ip"
    health_check {
      path = "/status"
    }
    vpc_id = aws_vpc.es_vpc.id
}