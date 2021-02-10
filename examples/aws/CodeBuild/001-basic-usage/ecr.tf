# Create an ECR repository with the name of 'myflask'
resource "aws_ecr_repository" "myflask" {
    name = "myflask"
    image_tag_mutability = "MUTABLE"
}
