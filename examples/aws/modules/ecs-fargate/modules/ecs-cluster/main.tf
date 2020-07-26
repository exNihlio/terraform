resource "aws_ecs_cluster" "ecs-cluster" {
    name = var.ecs_cluster_name
    capacity_providers = [ var.ecs_capacity_providers ]
    tags = {
        Manager = "terraform"
    }
}
