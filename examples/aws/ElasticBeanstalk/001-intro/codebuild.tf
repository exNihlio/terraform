resource "aws_codebuild_project" "sample_eb" {
    name = "sample_eb"
    description = "Source from CodeCommit"
    artifacts {
        type = "S3"
        location = aws_s3_bucket.artifacts_bucket.id
        name = "sample_eb.zip"
        packaging = "ZIP"
    }
    source {
        type = "CODECOMMIT"
        location = aws_codecommit_repository.sample_eb.clone_url_http
        buildspec = file("buildspecs/buildspec.yml")
    }
    source_version = var.source_version
    environment {
        type = "LINUX_CONTAINER"
        image = var.build_image
        compute_type =  "BUILD_GENERAL1_SMALL"
        environment_variable {
            name = "AWS_ACCOUNT_ID"
            value = data.aws_caller_identity.current.account_id
        }
    }
    service_role = aws_iam_role.codebuild_service_role.arn
}