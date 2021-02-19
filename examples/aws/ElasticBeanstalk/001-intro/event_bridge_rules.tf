resource "aws_cloudwatch_event_rule" "codecommit_sample_eb" {
    name = "codecommit-sample-eb"
    description = "Run CodeBuild job when repo is pushed to"
    event_pattern = data.template_file.codecommit_event_bridge.rendered
}