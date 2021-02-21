resource "aws_codecommit_repository" "flask_app" {
    repository_name = "flaskapp"
    description = "Sample application for CodeCommit"
}