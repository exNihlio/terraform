resource "aws_internet_gateway" "CodeBuild_igw" {
    vpc_id = aws_vpc.CodeBuild_vpc.id
    tags = {
        Name = "CodeBuild_igw"
        Manager = "terraform"
    }
}