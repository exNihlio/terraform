resource "aws_codebuild_webhook" "webhook_example" {
    project_name = aws_codebuild_project.webhook_example.id
    ## Only trigger builds when the specified branch (HEAD_REF) is pushed to
    filter_group {
        filter {
            type = "EVENT"
            pattern = "PUSH"
        }
        filter {
            type = "HEAD_REF"
            pattern = var.source_version
        }
    }
}