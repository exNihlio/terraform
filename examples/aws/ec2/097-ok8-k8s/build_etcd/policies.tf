# Attach the policy allowing to ECR write/query/pull privileges
# and CloudWatch logs privileges to CodeBuild
resource "aws_iam_policy" "CodeBuild_etcd" {
    name = "CodeBuild_etcd"
    policy = file("policies/CodeBuild_policy.json")
}
