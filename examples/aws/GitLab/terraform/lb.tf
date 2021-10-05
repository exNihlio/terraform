resource "aws_lb" "git_web_lb" {
    name = "git-web-lb"
    internal = "false"
    load_balancer_type = "application"
    subnets = [aws_subnet.sub_pub_1.id, aws_subnet.sub_pub_2.id]
    security_groups = [aws_security_group.alb_public_sg.id]
}
resource "aws_lb" "git_ssh_lb" {
    name = "git-ssh-lb"
    internal = "false"
    load_balancer_type = "network"
    subnets = [aws_subnet.sub_pub_1.id, aws_subnet.sub_pub_2.id]
    #security_groups = [aws_security_group.nlb_public_sg.id]
}