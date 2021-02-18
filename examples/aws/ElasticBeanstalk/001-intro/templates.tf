data "template_file" "codebuild_policy" {
    template = file("policies/codebuild_policy.json")
    vars = {
        artifacts_bucket = aws_s3_bucket.artifacts_bucket.id
    }
}