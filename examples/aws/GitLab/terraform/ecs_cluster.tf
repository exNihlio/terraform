resource "aws_ecs_cluster" "git_cluster" {
    name = "git-iac"
    capacity_providers = ["FARGATE"]
    depends_on = [aws_vpc.gitlab_vpc]
    tags = {
        Manager = "terraform"
    }
}
