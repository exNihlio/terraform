# This exists purely to obtain AWS account information of the individual running
# the Terraform code. ECR repos include the AWS account ID and this precludes the
# need to hardcode the account ID
data "aws_caller_identity" "current" {

}
