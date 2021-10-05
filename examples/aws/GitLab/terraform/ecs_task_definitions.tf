
resource "aws_ecs_task_definition" "gitlab" {
    family = "gitlab"
    network_mode = "awsvpc"
    requires_compatibilities = ["FARGATE"]
    cpu = 2048
    memory = 4096
    ## Container definition must be encoded as an array
    container_definitions = data.template_file.gitlab_task_def.rendered
    execution_role_arn = "arn:aws:iam::${data.aws_caller_identity.current.id}:role/ecsTaskExecutionRole"
    volume {
        name = "gitlab_config"
    }
    volume {
        name = "gitlab_logs"
    }
    volume {
        name = "gitlab_data"
    }
}
# resource "aws_ecs_task_definition" "es_usw2b" {
#     family = "es_usw2b_task"
#     network_mode = "awsvpc"
#     requires_compatibilities = ["FARGATE"]
#     cpu = 512
#     memory = 1024
#     ## Container definition must be encoded as an array
#     container_definitions = data.template_file.es_usw2b_task_def.rendered
#     execution_role_arn = "arn:aws:iam::${data.aws_caller_identity.current.id}:role/ecsTaskExecutionRole"
# }
# resource "aws_ecs_task_definition" "es_usw2c" {
#     family = "es_usw2c_task"
#     network_mode = "awsvpc"
#     requires_compatibilities = ["FARGATE"]
#     cpu = 512
#     memory = 1024
#     ## Container definition must be encoded as an array
#     container_definitions = data.template_file.es_usw2c_task_def.rendered
#     execution_role_arn = "arn:aws:iam::${data.aws_caller_identity.current.id}:role/ecsTaskExecutionRole"
# }
# resource "aws_ecs_task_definition" "kibana" {
#      family = "kibana"
#      network_mode = "awsvpc"
#      requires_compatibilities = ["FARGATE"]
#      cpu = 256
#      memory = 512
#      container_definitions = data.template_file.kibana_task_def.rendered
#      execution_role_arn = "arn:aws:iam::${data.aws_caller_identity.current.id}:role/ecsTaskExecutionRole"
# }
# resource "aws_ecs_task_definition" "flaskapp" {
#      family = "flaskapp"
#      network_mode = "awsvpc"
#      requires_compatibilities = ["FARGATE"]
#      cpu = 256
#      memory = 512
#      container_definitions = data.template_file.flask_app_task_def.rendered
#      execution_role_arn = "arn:aws:iam::${data.aws_caller_identity.current.id}:role/ecsTaskExecutionRole"
#  }