resource "aws_nat_gateway" "CodeBuild_ngw" {
    allocation_id = aws_eip.CodeBuild_eip.id
    subnet_id = aws_subnet.CodeBuild_pub.id
    tags = {
        Name = "CodeBuild_ngw"
        Manager = "terraform"
    }
}