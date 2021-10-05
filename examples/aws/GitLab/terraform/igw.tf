resource "aws_internet_gateway" "git_igw" {
    vpc_id = aws_vpc.gitlab_vpc.id
}