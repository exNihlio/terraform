resource "aws_iam_role" "CodeBuild_ecr" {
    name = "CodeBuild_ecr"
    assume_role_policy = jsonendcode(file("roles/CodeBuild_role.json"))
}
