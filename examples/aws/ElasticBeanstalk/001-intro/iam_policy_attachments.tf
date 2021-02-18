resource "aws_iam_role_policy_attachment" "codebuild" {
    role = aws_iam_role.codebuild_service_role.name
    policy_arn = aws_iam_policy.codebuild_policy.arn
}