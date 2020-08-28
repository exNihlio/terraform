# Create a Terraform role for CodeBuild.
resource "aws_iam_role" "codebuild_ecr" {
    name = "CodeBuild_ecr"
    # Terraform will automatically apply the 'jsonencode' function
    # here. If you specify 'jsonencode' yourself, it will cause an
    # error. 
    assume_role_policy = file("roles/CodeBuild_role.json")
}
