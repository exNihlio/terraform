resource "aws_vpc" "privatelink-vpc" {
    cidr_block = "10.72.0.0/16"
    enable_dns_hostnames = true
    enable_dns_support = true
    tags = {
        Name =  "privatelink-vpc"
    }
}
