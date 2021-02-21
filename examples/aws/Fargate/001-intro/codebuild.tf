resource "aws_codebuild_project" "flask_image" {
    name = "flask_image"
    description = "Build ECR image from Flask app CodeCommit"
    artifacts {
        type = "NO_ARTIFACTS"
    }
    source {
        type = "CODECOMMIT"
        location = aws_codecommit_repository.flask_app.clone_url_http
    }
    environment {
        type = "LINUX_CONTAINER"
        image = "aws/codebuild/amazonlinux2-x86_64-standard:3.0"
        compute_type =  "BUILD_GENERAL1_SMALL"
        privileged_mode = true
        environment_variable {
            name = "AWS_ACCOUNT_ID"
            value = data.aws_caller_identity.current.account_id
        }
    }
    service_role = aws_iam_role.codebuild_service_role.arn
}