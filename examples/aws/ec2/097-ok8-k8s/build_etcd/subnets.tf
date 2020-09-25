resource "aws_subnet" "CodeBuild_pub" {
    cidr_block = "10.72.1.0/24"
    availability_zone = "${var.region}a"
    vpc_id = aws_vpc.CodeBuild_vpc.id
}

resource "aws_subnet" "CodeBuild_priv" {
    cidr_block = "10.72.2.0/24"
    availability_zone = "${var.region}a"
    vpc_id = aws_vpc.CodeBuild_vpc.id
}