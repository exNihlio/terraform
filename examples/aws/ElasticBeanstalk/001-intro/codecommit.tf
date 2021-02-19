resource "aws_codecommit_repository" "sample_eb" {
    repository_name = var.repo_name
    description = "A sample application repo for EB"
}