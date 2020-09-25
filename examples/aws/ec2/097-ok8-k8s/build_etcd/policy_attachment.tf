resource "aws_iam_role_policy_attachment" "CodeBuild_etc" {
    role = aws_iam_role.CodeBuild_etcd.name
    policy_arn = aws_iam_policy.CodeBuild_etcd.arn
    depends_on = [aws_iam_role.CodeBuild_etcd,
                  aws_iam_policy.CodeBuild_etcd]
}