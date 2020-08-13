resource "aws_codebuild_project" "sample" {
    source = "sample-project"
    description = "Build a Docker container from GitHub"
    build_timeout = "60"
    service_role = aws_iam_role.codebuild_ecr.arn

    artifacts = {
        type = "NO_ARTIFACTS"
    }

    source = {
        type = "GITHUB"
        location var.github_url
    }

    environment = {
        type = "LINUX_CONTAINER",
        image = var.build_image
        computeType =  "BUILD_GENERAL1_SMALL"
        privilegedMode = "true"
    }
}
