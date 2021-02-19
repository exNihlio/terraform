resource "aws_iam_role_policy_attachment" "codebuild" {
    role = aws_iam_role.codebuild_service_role.name
    policy_arn = aws_iam_policy.codebuild_policy.arn
}
resource "aws_iam_role_policy_attachment" "event_bridge" {
    role = aws_iam_role.event_bridge_service_role.name
    policy_arn = aws_iam_policy.event_bridge_service_policy.arn
}