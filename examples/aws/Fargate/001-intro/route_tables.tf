resource "aws_route_table" "ecs_ngw_rtb" {
    vpc_id = aws_vpc.flaskapp_vpc.id
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_nat_gateway.flaskapp_ngw.id
    }
}

resource "aws_route_table" "ecs_igw_rtb" {
    vpc_id = aws_vpc.flaskapp_vpc.id
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.flaskapp_igw.id
    }
}