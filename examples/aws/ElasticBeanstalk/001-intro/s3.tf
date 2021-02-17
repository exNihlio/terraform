resource "aws_s3_bucket" "artifacts_bucket" {
    bucket = "${data.aws_caller_identity.current.id}-artifacts-bucket"
    acl = "private"
}