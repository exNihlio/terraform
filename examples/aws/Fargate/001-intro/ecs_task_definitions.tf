resource "aws_ecs_task_definition" "flaskapp" {
     family = "flaskapp"
     network_mode = "awsvpc"
     requires_compatibilities = ["FARGATE"]
     # CPU and Memory must be included for Fargate
     # CPU must be multiple of 2
     cpu = 256
     # Memory must be within given ratio values
     # See here: https://aws.amazon.com/fargate/pricing/
     # Memory must also be multiple of 2
     memory = 512
     container_definitions = data.template_file.flask_app_task_def.rendered
     execution_role_arn = "arn:aws:iam::305760793472:role/ecsTaskExecutionRole"
     # Task sources this SSM parameters. Do not run container or 
     # create task definition until these parameters exist.
     # depends_on = [aws_iam_policy.ecsKMSParameterStore,
     #               aws_ssm_parameter.ecr_endpoint]
 }
