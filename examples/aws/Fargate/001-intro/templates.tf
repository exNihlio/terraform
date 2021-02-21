data "template_file" "flask_app_task_def" {
    template = file("ecs_tasks/myapp.json")
    vars = {
        aws_account_id = data.aws_caller_identity.current.id
        aws_region = var.region
        flask_app_repo = var.flask_app_repo
        flask_app_tag = var.flask_app_tag
    }
}
# data "template_file" "codebuild_policy" {
#     template = file("policies/codebuild_policy.json")
#     vars = {
#         artifacts_bucket = aws_s3_bucket.artifacts_bucket.id
#     }
# }

data "template_file" "codecommit_event_bridge" {
    template = file("events/codecommit_event_pattern.json")
    vars = {
        region = var.region
        account_id = data.aws_caller_identity.current.id
        codecommit_repo_name = var.codecommit_repo_name
    }
}