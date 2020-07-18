resource "aws_route_table_association" "sgw" {
    subnet_id = aws_subnet.sgw-sub-a.id
    route_table_id.aws_route_table.lxd-igw.id
}

resource "aws_route_table_association" "lxd-sub-a" {
    subnet_id = aws_subnet.lxd-sub-a.id
    route_table_id.aws_route_table.lxd-ngw.id
}

resource "aws_route_table_association" "lxd-sub-b" {
    subnet_id = aws_subnet.lxd-sub-b.id
    route_table_id.aws_route_table.lxd-ngw.id
}

resource "aws_route_table_association" "lxd-sub-c" {
    subnet_id = aws_subnet.lxd-sub-c.id
    route_table_id.aws_route_table.lxd-ngw.id
}
