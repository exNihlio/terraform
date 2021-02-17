data "template_file" "codebuild_policy" {
    template = file("policies/CodeBuild_policy.json")
    vars = {
        artifacts_bucket = aws_s3_bucket.codebuild_bucket.id
    }
}