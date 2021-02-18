resource "aws_codecommit_repository" "sample_eb" {
    repository_name = "sample_eb"
    description = "A sample application repo for EB"
}