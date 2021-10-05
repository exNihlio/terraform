resource "aws_route_table" "git_ngw_rtb" {
    vpc_id = aws_vpc.gitlab_vpc.id
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_nat_gateway.git_ngw.id
    }
}

resource "aws_route_table" "git_igw_rtb" {
    vpc_id = aws_vpc.gitlab_vpc.id
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.git_igw.id
    }
}