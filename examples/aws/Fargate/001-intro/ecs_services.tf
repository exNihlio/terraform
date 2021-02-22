resource "aws_ecs_service" "flaskapp" {
    name = "flaskapp"
    cluster = aws_ecs_cluster.flask_cluster.id
    task_definition = aws_ecs_task_definition.flaskapp.arn
    desired_count = 1
    launch_type = "FARGATE"
    load_balancer {
      target_group_arn = aws_lb_target_group.flask_tg.arn
      container_name = "flaskapp"
      container_port = "8000"
    }
    network_configuration {
        subnets = [aws_subnet.sub_priv_1.id,aws_subnet.sub_priv_2.id]
        security_groups = [aws_security_group.flaskapp_sg.id]
    }
}