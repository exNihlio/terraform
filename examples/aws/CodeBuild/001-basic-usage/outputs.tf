output "ecr_endpoint" {
    value = aws_ecr_repository.myflask.repository_url
}