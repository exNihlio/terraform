resource "aws_nat_gateway" "lxd" {
    subnet_id = aws_subnet.sgw-sub-a.id
    allocation_id = aws_eip.ngw.id
}
