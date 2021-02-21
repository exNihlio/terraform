resource "aws_iam_policy" "ecsTasksExecutionPolicy" {
    name = "ecsTaskExceutionPolicy"
    path = "/"
    description = "Policy to allow ECS tasks to access required resources"
    policy = file("policies/ecsTaskExecutionPolicy.json")
}