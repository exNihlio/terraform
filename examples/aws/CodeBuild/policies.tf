resource "aws_iam_policy" "CodeBuild_ecr" {
    name = "CodeBuild_ecr"
    policy = file("polcies/CodeBuild_policy.json")
}