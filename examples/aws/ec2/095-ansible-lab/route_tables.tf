resource "aws_route_table" "igw" {
    vpc_id = aws_vpc.lab_vpc.id
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.igw.id
    }
}
# NAT gateway for the ES nodes
resource "aws_route_table" "ngw" {
    vpc_id = aws_vpc.lab_vpc.id
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_nat_gateway.ngw.id
    }
}