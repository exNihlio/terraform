resource "aws_subnet" "pub-sub-1" {
    cidr_block = "10.72.1.0/24"
    vpc_id = aws_vpc.privatelink-vpc.id
    availability_zone = "us-west-2a"
}

resource "aws_subnet" "priv-sub-1" {
    cidr_block = "10.72.2.0/24"
    vpc_id = aws_vpc.privatelink-vpc.id
    availability_zone = "us-west-2a"
}

resource "aws_subnet" "priv-sub-2" {
    cidr_block = "10.72.3.0/24"
    vpc_id = aws_vpc.privatelink-vpc.id
    availability_zone = "us-west-2b"
}

resource "aws_subnet" "priv-sub-3" {
    cidr_block = "10.72.4.0/24"
    vpc_id = aws_vpc.privatelink-vpc.id
    availability_zone = "us-west-2c"
}