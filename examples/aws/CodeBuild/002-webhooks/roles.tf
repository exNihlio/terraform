# Create a Terraform role for CodeBuild.
resource "aws_iam_role" "codebuild_webhook" {
    name = "CodeBuild_service_role_webhook"
    assume_role_policy = file("roles/CodeBuild_role.json")
}
