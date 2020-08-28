resource "aws_ecs_cluster" "tf-sample" {
    name = "tf-practice"
    capacity_providers = ["FARGATE"]
    depends_on = [aws_vpc.ecs-cluster]
    tags = {
        Manager = "terraform"
    }
}
