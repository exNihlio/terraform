resource "aws_ecs_cluster" "tf-sample" {
    name = "tf-practice"
    capacity_providers = ["FARGATE"]
    depends_on = [aws_vpc.flaskapp-vpc]
    tags = {
        Manager = "terraform"
    }
}
