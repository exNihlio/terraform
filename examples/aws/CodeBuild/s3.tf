data "aws_caller_identity" "current" {

}

resource "aws_s3_bucket" "codebuild_bucket" {
    bucket = "${aws_caller_identity.account_id}-tf-codebuild-docker"
    acl = "private"
    tags = {
        Name = "tf-codebuild-docker"
        Manager = "terraform"
    }
}
