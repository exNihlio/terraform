resource "aws_subnet" "sgw-sub-a" {
    vpc_id = aws_vpc.lxd.id
    cidr_block = var.sgw-sub-a-cidr
    availability_zone = "us-west-2a"
}

resource "aws_subnet" "lxd-sub-a" {
    vpc_id = aws_vpc.lxd.id
    cidr_block = var.lxd-sub-a-cidr
    availability_zone = "us-west-2a"
}

resource "aws_subnet" "lxd-sub-b" {
    vpc_id = aws_vpc.lxd.id
    cidr_block = var.lxd-sub-b-cidr
    availability_zone = "us-west-2b"
}

resource "aws_subnet" "lxd-sub-c" {
    vpc_id = aws_vpc.lxd.id
    cidr_block = var.lxd-sub-c-cidr
    availability_zone = "us-west-2c"
}
