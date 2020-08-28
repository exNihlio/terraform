resource "aws_ecs_cluster" "web-app" {
    name = "web-app"
    # Required to use Fargate
    capacity_providers = "FARGATE"
}