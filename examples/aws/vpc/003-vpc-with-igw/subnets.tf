resource "aws_subnet" "pub_sub_1" {
    cidr_block = "10.72.1.0/24"
    vpc_id = aws_vpc.terraform-example-vpc.id
    availability_zone = "us-west-2a"
}

resource "aws_subnet" "priv_sub_1" {
    cidr_block = "10.72.2.0/24"
    vpc_id = aws_vpc.terraform-example-vpc.id
    availability_zone = "us-west-2a"
}
