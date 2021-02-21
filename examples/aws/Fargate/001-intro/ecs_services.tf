resource "aws_ecs_service" "flaskapp_az1" {
    name = "flaskapp_az1"
    cluster = aws_ecs_cluster.flask_cluster.id
    task_definition = aws_ecs_task_definition.flaskapp.arn
    desired_count = 0
    iam_role = aws_iam_role.ecsTaskExecutionRole.arn
    launch_type = "FARGATE"
    network_configuration {
        subnets = [aws_subnet.sub_priv_1.id]
        security_groups = [aws_security_group.flaskapp_sg.id]
    }
}
resource "aws_ecs_service" "flaskapp_az2" {
    name = "flaskapp_az2"
    cluster = aws_ecs_cluster.flask_cluster.id
    task_definition = aws_ecs_task_definition.flaskapp.arn
    desired_count = 0
    iam_role = aws_iam_role.ecsTaskExecutionRole.arn
    launch_type = "FARGATE"
    network_configuration {
        subnets = [aws_subnet.sub_priv_2.id]
        security_groups = [aws_security_group.flaskapp_sg.id]
    }
}