resource "aws_iam_role" "codebuild_service_role" {
    name = "CodeBuild_eb_service_role"
    assume_role_policy = file("roles/codebuild_role.json")
}
resource "aws_iam_role" "event_bridge_service_role" {
    name = "EventBridgeServiceRole"
    assume_role_policy = file("roles/event_bridge_service_role.json")
}