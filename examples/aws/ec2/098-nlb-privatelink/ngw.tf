resource "aws_nat_gateway" "privatelink_client_ngw" {
    allocation_id = aws_eip.client_ngw_eip.id
    subnet_id = aws_subnet.pub_sub_1.id
    tags = {
        Name = "client-ngw"
        manager = "terraform"
    }
}

resource "aws_nat_gateway" "privatelink_server_ngw" {
    allocation_id = aws_eip.server_ngw_eip.id
    subnet_id = aws_subnet.server_pub_sub_1.id
    tags = {
        Name = "server-ngw"
        manager = "terraform"
    }
}