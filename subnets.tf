resource "aws_subnet" "sgw-sub-a" {
    cidr_block = var.sgw-sub-a-cidr
    availability_zone = "us-west-2a"
}

resource "aws_subnet" "lxd-sub-a" {
    cidr_block = var.lxd-sub-a-cidr
    availability_zone = "us-west-2a"
}

resource "aws_subnet" "lxd-sub-b" {
    cidr_block = var.lxd-sub-b-cidr
    availability_zone = "us-west-2b"
}

resouce "aws_subnet" "lxd-sub-c" {
    cidr_block = var.lxd-sub-c-cidr
    availability_zone = "us-west-2c"
}
