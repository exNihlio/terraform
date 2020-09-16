resource "aws_vpc" "privatelink_client_vpc" {
    cidr_block = "10.72.0.0/16"
    enable_dns_hostnames = true
    enable_dns_support = true
    tags = {
        Name =  "privatelink-vpc"
        Manager = "terraform"
    }
}

resource "aws_vpc" "privatelink_server_vpc" {
    cidr_block = "10.73.0.0/16"
    enable_dns_hostnames = true
    enable_dns_support = true
    tags = {
        Name =  "privatelink-server-vpc"
        Manager = "terraform"
    }
}