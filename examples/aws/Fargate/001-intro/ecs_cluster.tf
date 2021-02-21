resource "aws_ecs_cluster" "flask_cluster" {
    name = "tf-practice"
    capacity_providers = ["FARGATE"]
    depends_on = [aws_vpc.flaskapp_vpc]
    tags = {
        Manager = "terraform"
    }
}
