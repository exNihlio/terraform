resource "aws_route_table" "igw_public" {
    vpc_id = aws_vpc.eb_vpc.id
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.eb_igw.id
    }
}
