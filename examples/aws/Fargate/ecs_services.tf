resource "aws_ecs_service" "flaskapp" {
    name = "flaskapp"
    cluster = aws_ecs_cluster.tf-sample.id
    task = aws_ecs_task_definition.flaskapp.arn
    desired_count = 0
    iam_role = aws_iam_role.ecs_manager_role.arn
    launch_type = "FARGATE"
    network_configuration {
        subnets = []
        security_groups = []
    }
}