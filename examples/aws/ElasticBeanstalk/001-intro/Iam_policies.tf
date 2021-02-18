resource "aws_iam_policy" "codebuild_policy" {
    name = "CodeBuild_eb_policy"
    description = "Give CodeBuild requisite access"
    policy = data.template_file.codebuild_policy.rendered
}