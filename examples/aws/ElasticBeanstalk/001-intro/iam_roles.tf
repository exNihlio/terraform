resource "aws_iam_role" "codebuild_service_role" {
    name = "CodeBuild_eb_service_role"
    assume_role_policy = file("roles/codebuild_role.json")
}