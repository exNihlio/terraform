resource "aws_iam_role_policy_attachment" "codebuild_webhook" {
    role = aws_iam_role.codebuild_webhook.name
    policy_arn = aws_iam_policy.codebuild_webhook.arn
    depends_on = [aws_iam_role.codebuild_webhook,
                  aws_iam_policy.codebuild_webhook]
}