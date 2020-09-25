resource "aws_s3_bucket" "codebuild_bucket" {
    bucket = "${data.aws_caller_identity.current.account_id}-codebuild-etcd"
    acl = "private"
    tags = {
        Name = "codebuild-etcd"
        Manager = "terraform"
    }
}
