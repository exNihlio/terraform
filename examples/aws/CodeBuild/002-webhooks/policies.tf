# Attach the policy allowing to ECR write/query/pull privileges
# and CloudWatch logs privileges to CodeBuild
resource "aws_iam_policy" "codebuild_webhook" {
    name = "CodeBuild_webook"
    policy = data.template_file.codebuild_policy.rendered
}
