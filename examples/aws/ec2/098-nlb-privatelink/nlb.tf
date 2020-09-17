resource "aws_lb" "nlb_private_link" {
    name = "nlb-private-link-test"
    internal = "true"
    load_balancer_type = "network"
    #security_groups = [aws_security_group.nlb_web_sg.id]
    subnets = [ aws_subnet.nlb_priv_sub_1.id, aws_subnet.nlb_priv_sub_2.id]
    tags = {
        Manager = "terraform"
    }
    timeouts {
        create = "5m"
    }
}