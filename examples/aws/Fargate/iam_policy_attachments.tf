resource "aws_iam_role_policy_attachment" "ecsTaskExecutionRolePolicy" {
    role = aws_iam_role.ecsTaskExecutionRole.name
    policy_arn = aws_iam_policy.ecsTasksExecutionPolicy.arn
} 