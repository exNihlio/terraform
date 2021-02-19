resource "aws_cloudwatch_event_target" "codecommit_sample_eb" {
    target_id = "codecommit_sample_eb"
    rule = aws_cloudwatch_event_rule.codecommit_sample_eb.name
    arn = aws_codebuild_project.sample_eb.arn
    role_arn = aws_iam_role.event_bridge_service_role.arn
}