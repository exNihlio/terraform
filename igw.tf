resource "aws_internet_gateway" "lxd" {
    vpc_id = aws_vpc.lxd.id
}
