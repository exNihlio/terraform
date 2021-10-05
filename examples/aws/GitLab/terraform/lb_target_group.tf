resource "aws_lb_target_group" "git_http_tg" {
    name = "git-http-tg"
    port = "80"
    protocol = "HTTP"
    target_type = "ip"
    deregistration_delay = 30
    health_check {
      interval = 120
      unhealthy_threshold = 5
      matcher = "200-299,300,301,302"
    }
    vpc_id = aws_vpc.gitlab_vpc.id
}

resource "aws_lb_target_group" "git_ssh_tg" {
  name = "git-ssh-tg"
  port = "22"
  protocol = "TCP"
  target_type = "ip"
  deregistration_delay = 30
  vpc_id = aws_vpc.gitlab_vpc.id
}