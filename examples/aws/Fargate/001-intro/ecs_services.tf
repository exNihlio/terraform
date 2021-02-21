resource "aws_ecs_service" "flaskapp" {
    name = "flaskapp"
    cluster = aws_ecs_cluster.tf-sample.id
    task_definition = aws_ecs_task_definition.flaskapp.arn
    desired_count = 0
    iam_role = aws_iam_role.ecsTaskExecutionRole.arn
    launch_type = "FARGATE"
    network_configuration {
        subnets = [aws_subnet.sub-priv-1.id]
        security_groups = [aws_security_group.flaskapp-sg.id]
    }
}