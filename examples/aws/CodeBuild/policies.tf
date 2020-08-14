# Attach the policy allowing to ECR write/query/pull privileges
# and CloudWatch logs privileges to CodeBuild
resource "aws_iam_policy" "CodeBuild_ecr" {
    name = "CodeBuild_ecr"
    policy = file("policies/CodeBuild_policy.json")
}
