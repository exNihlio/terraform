resource "aws_route_table" "client_igw" {
    vpc_id = aws_vpc.privatelink_client_vpc.id
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.privatelink_client_igw.id
    }
}
resource "aws_route_table" "server_igw" {
    vpc_id = aws_vpc.privatelink_server_vpc.id
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.privatelink_server_igw.id
    }
}

resource "aws_route_table" "client_ngw" {
    vpc_id = aws_vpc.privatelink_client_vpc.id
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_nat_gateway.privatelink_client_ngw.id
    }
}

resource "aws_route_table" "server_ngw" {
    vpc_id = aws_vpc.privatelink_server_vpc.id
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_nat_gateway.privatelink_server_ngw.id
    }
}

