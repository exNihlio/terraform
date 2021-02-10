resource "aws_iam_role_policy_attachment" "CodeBuild_etc" {
    role = aws_iam_role.codebuild_ecr.name
    policy_arn = aws_iam_policy.CodeBuild_ecr.arn
    depends_on = [aws_iam_role.codebuild_ecr,
                  aws_iam_policy.CodeBuild_ecr]
}