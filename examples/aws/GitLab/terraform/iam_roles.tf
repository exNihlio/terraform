resource "aws_iam_role" "ecsTaskExecutionRole" {
    name = "ecsTaskExecutionRole"
    assume_role_policy = file("roles/ecsTaskExecutionRole.json")
}
# resource "aws_iam_role" "codebuild_service_role" {
#     name = "CodeBuild_eb_service_role"
#     assume_role_policy = file("roles/codebuild_role.json")
# }
# resource "aws_iam_role" "event_bridge_service_role" {
#     name = "EventBridgeServiceRole"
#     assume_role_policy = file("roles/event_bridge_service_role.json")
# }
# resource "aws_iam_role" "vpc_flow_logs_role" {
#     name = "aws_vpc_flow_logs_access"
#     assume_role_policy = file("roles/AWSVPCRole.json")
# }
# resource "aws_iam_role" "codepipeline_role" {
#     name = "codepipeline_to_ecs"
#     assume_role_policy = file("roles/codepipeline_service_role.json")
# }