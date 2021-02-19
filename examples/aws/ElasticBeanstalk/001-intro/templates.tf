data "template_file" "codebuild_policy" {
    template = file("policies/codebuild_policy.json")
    vars = {
        artifacts_bucket = aws_s3_bucket.artifacts_bucket.id
    }
}

data "template_file" "codecommit_event_bridge" {
    template = file("events/codecommit_event_pattern.json")
    vars = {
        region = var.region
        account_id = data.aws_caller_identity.current.id
        repo_name = var.repo_name
    }
}