resource "aws_route_table" "lxd-igw" {
    vpc_id = aws_vpc.lxd.id
    route {
        gateway_id = aws_internet_gateway.lxd.id
    }
}

resource "aws_route_table" "lxd-ngw" {
    vpc_id = aws_vpc.lxd.id
    route {
        gateway_id = aws_nat_gateway.lxd.id
    }
}
