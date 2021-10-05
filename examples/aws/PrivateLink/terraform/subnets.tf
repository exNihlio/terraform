resource "aws_subnet" "pub_sub_1" {
    cidr_block = "10.72.1.0/24"
    vpc_id = aws_vpc.privatelink_client_vpc.id
    availability_zone = "us-west-2a"
    tags = {
        Name = "privatelink-pub-sub-1"
        Manager = "terraform"
    }
}
resource "aws_subnet" "priv_sub_1" {
    cidr_block = "10.72.2.0/24"
    vpc_id = aws_vpc.privatelink_client_vpc.id
    availability_zone = "us-west-2a"
    tags = {
        Name = "privatelink-priv-sub-1"
        Manager = "terraform"
    }
}
resource "aws_subnet" "priv_endpoint_1" {
    cidr_block = "10.72.5.0/24"
    vpc_id = aws_vpc.privatelink_client_vpc.id
    availability_zone = "us-west-2a"
    tags = {
        Name = "privatelink-endpoint-sub-1"
        Manager = "terraform"
    }
}
resource "aws_subnet" "server_pub_sub_1" {
    cidr_block = "10.73.1.0/24"
    vpc_id = aws_vpc.privatelink_server_vpc.id
    availability_zone = "us-west-2a"
    tags = {
        Name = "server-pub-sub-1"
        Manager = "terraform"
    }
}
resource "aws_subnet" "server_priv_sub_1" {
    cidr_block = "10.73.2.0/24"
    vpc_id = aws_vpc.privatelink_server_vpc.id
    availability_zone = "us-west-2a"
    tags = {
        Name = "server-priv-sub-1"
        Manager = "terraform"
    }
}
resource "aws_subnet" "server_priv_sub_2" {
    cidr_block = "10.73.3.0/24"
    vpc_id = aws_vpc.privatelink_server_vpc.id
    availability_zone = "us-west-2b"
    tags = {
        Name = "server-priv-sub-2"
        Manager = "terraform"
    }
}
resource "aws_subnet" "priv_endpoint_2" {
    cidr_block = "10.73.5.0/24"
    vpc_id = aws_vpc.privatelink_server_vpc.id
    availability_zone = "us-west-2a"
    tags = {
        Name = "server-endpoint-sub-1"
        Manager = "terraform"
    }
}
resource "aws_subnet" "nlb_priv_sub_1" {
    cidr_block = "10.73.10.0/24"
    vpc_id = aws_vpc.privatelink_server_vpc.id
    availability_zone = "us-west-2a"
    tags = {
        Name = "nlb-priv-sub-1"
        Manager = "terraform"
    }
}
resource "aws_subnet" "nlb_priv_sub_2" {
    cidr_block = "10.73.11.0/24"
    vpc_id = aws_vpc.privatelink_server_vpc.id
    availability_zone = "us-west-2b"
    tags = {
        Name = "nlb-priv-sub-1"
        Manager = "terraform"
    }
}
