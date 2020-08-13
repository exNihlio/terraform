resource "aws_codebuild_project" "sample" {
    name = "sample-project"
    description = "Build a Docker container from GitHub"
    build_timeout = "60"
    service_role = aws_iam_role.codebuild_ecr.arn

    artifacts {
        type = "NO_ARTIFACTS"
    }

    source {
        type = "GITHUB"
        location = var.github_url
    }

    environment {
        type = "LINUX_CONTAINER"
        image = var.build_image
        compute_type =  "BUILD_GENERAL1_SMALL"
        privileged_mode = "true"
    }
}
