resource "aws_vpc_endpoint_service" "privatelink_service" {
    acceptance_required = false
    network_load_balancer_arns = [aws_lb.nlb_private_link.arn]
    depends_on = [aws_lb.nlb_private_link]
}