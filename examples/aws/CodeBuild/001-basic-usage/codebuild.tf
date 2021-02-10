# This is the framework of the CodeBuild project
# itself. It defines the environment and the resources
# assigned to that project.
resource "aws_codebuild_project" "sample" {
    name = "sample-project"
    description = "Build a Docker container from GitHub"
    # This is in minutes.
    build_timeout = "60"
    # The role with the permissions policy. In this case
    # permissions to push to ECR and write CloudWatch logs
    service_role = aws_iam_role.codebuild_ecr.arn
    # We aren't producing artifacts.
    artifacts {
        type = "NO_ARTIFACTS"
    }
    # Building this container from a Dockerfile stored on
    # GitHub
    source {
        type = "GITHUB"
        location = var.github_url
    }
    environment {
        # These are environment specific settings and define what
        # the build runtime and computer environment looks like.
        type = "LINUX_CONTAINER"
        image = var.build_image
        compute_type =  "BUILD_GENERAL1_SMALL"
        privileged_mode = "true"
        # These variables are available to the build runtime itself.
        # They can be accesses with the buildspec.yml file.
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
            value = data.aws_caller_identity.current.account_id
        }
        environment_variable {
            name = "AWS_DEFAULT_REGION"
            value = var.aws_default_region
        }
    }
    # Ensure that the ECR resource is created before the image is built and
    # pushed, preventing race conditions.
    depends_on = [ aws_ecr_repository.myflask ]
}
