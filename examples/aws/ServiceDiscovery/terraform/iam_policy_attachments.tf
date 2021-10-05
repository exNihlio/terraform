resource "aws_iam_role_policy_attachment" "ecsTaskExecutionRolePolicy" {
    role = aws_iam_role.ecsTaskExecutionRole.name
    policy_arn = aws_iam_policy.ecsTasksExecutionPolicy.arn
}
resource "aws_iam_role_policy_attachment" "codebuild" {
    role = aws_iam_role.codebuild_service_role.name
    policy_arn = aws_iam_policy.codebuild_policy.arn
}
resource "aws_iam_role_policy_attachment" "event_bridge" {
    role = aws_iam_role.event_bridge_service_role.name
    policy_arn = aws_iam_policy.event_bridge_service_policy.arn
}
resource "aws_iam_role_policy_attachment" "vpc_flow_logs" {
    role = aws_iam_role.vpc_flow_logs_role.name
    policy_arn = aws_iam_policy.vpc_flow_log_policy.arn
}
resource "aws_iam_role_policy_attachment" "codepipeline" {
    role = aws_iam_role.codepipeline_role.name
    policy_arn = aws_iam_policy.codepipeline_ecs_policy.arn
}