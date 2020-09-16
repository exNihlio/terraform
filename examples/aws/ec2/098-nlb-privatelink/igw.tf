resource aws_internet_gateway "privatelink_client_igw" {
    vpc_id = aws_vpc.privatelink_client_vpc.id
    tags = {
        Name = "privatelink_client_igw"
        manager = "Terraform"
    }
}

resource aws_internet_gateway "privatelink_server_igw" {
    vpc_id = aws_vpc.privatelink_server_vpc.id
    tags = {
        Name = "privatelink_server_igw"
        manager = "Terraform"
    }
}