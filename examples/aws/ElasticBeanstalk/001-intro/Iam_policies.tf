resource "aws_iam_policy" "codebuild_policy" {
    name = "CodeBuild_eb_policy"
    description = "Give CodeBuild requisite access"
    policy = data.template_file.codebuild_policy.rendered
}
resource "aws_iam_policy" "event_bridge_service_policy" {
    name = "EventBridgeServiceRole"
    description = "Allow EventBridge to invoke CodeBuild"
    policy = file("policies/event_bridge_service_policy.json")
}