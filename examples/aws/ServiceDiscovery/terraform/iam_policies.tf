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
    description = "Allow EventBridge to invoke CodeBuild and CodePipeline"
    policy = file("policies/event_bridge_service_policy.json")
}
resource "aws_iam_policy" "vpc_flow_log_policy" {
    name = "vpc_flow_log_policy"
    description = "Allow VPC to publish flow logs to CloudWatch"
    policy = file("policies/cloudwatch_logs_access.json")
}
resource "aws_iam_policy" "codepipeline_ecs_policy" {
    name = "codepipeline_ecs_policy"
    description = "Allow CodePipeline access to requisite services"
    policy = file("policies/codepipeline_policy.json")
}