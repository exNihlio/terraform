resource "aws_route_table" "CodeBuild_pub" {
    vpc_id = aws_vpc.CodeBuild_vpc.id
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.CodeBuild_igw.id
    }
}

resource "aws_route_table" "CodeBuild_priv" {
    vpc_id = aws_vpc.CodeBuild_vpc.id
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_nat_gateway.CodeBuild_ngw.id
    }
}