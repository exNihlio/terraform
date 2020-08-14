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
        
        environment_variable {
            name = "IMAGE_REPO_NAME"
            value = var.image_repo_name
        }
        environment_variable {
            name = "IMAGE_TAG"
            value = var.image_tag
        }
        environment_variable {
            name = "AWS_ACCOUNT_ID" 
            value = data.aws_caller_identity.current.id
        }
        environment_variable {
            name = "AWS_DEFAULT_REGION"
            value = var.aws_default_region
        }
    }
    depends_on = [ aws_ecr_repository.myflask ]
}
