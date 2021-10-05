resource "aws_ecs_cluster" "es_cluster" {
    name = "es"
    capacity_providers = ["FARGATE"]
    depends_on = [aws_vpc.es_vpc]
    tags = {
        Manager = "terraform"
    }
}
