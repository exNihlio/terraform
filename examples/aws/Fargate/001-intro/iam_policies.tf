resource "aws_iam_policy" "ecsTasksExecutionPolicy" {
    name = "ecsTaskExceutionPolicy"
    path = "/"
    description = "Policy to allow ECS tasks to access required resources"
    policy = file("policies/ecsTaskExecutionPolicy.json")
}
resource "aws_iam_policy" "codebuild_policy" {
    name = "CodeBuild_eb_policy"
    description = "Give CodeBuild requisite access"
    policy = file("policies/codebuild_policy.json")
}
resource "aws_iam_policy" "event_bridge_service_policy" {
    name = "EventBridgeServiceRole"
    description = "Allow EventBridge to invoke CodeBuild"
    policy = file("policies/event_bridge_service_policy.json")
}