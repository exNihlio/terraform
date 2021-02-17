resource "aws_codebuild_project" "webhook_example" {
    name = "webhook_example"
    description = "Project to demonstrate webhooks"
    build_timeout = "60"
    
    artifacts {
        type = "S3"
        location = aws_s3_bucket.codebuild_bucket.id
    }
    source {
        type = "GITHUB"
        location = var.github_url
        auth {
            type = "OAUTH"
            resource = aws_codebuild_source_credential.webhook_example.arn
        }
    }
    source_version = var.source_version
    environment {
        type = "LINUX_CONTAINER"
        image = var.build_image
        compute_type =  "BUILD_GENERAL1_SMALL"
        privileged_mode = "true"
        environment_variable {
            name = "AWS_ACCOUNT_ID"
            value = data.aws_caller_identity.current.account_id
        }
    }
    service_role = aws_iam_role.codebuild_webhook.arn
}
