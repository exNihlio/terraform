resource "aws_iam_role" "ecsTaskExecutionRole" {
    name = "ecsTaskExecutionRole"
    assume_role_policy = file("roles/ecsTaskExecutionRole.json")
}