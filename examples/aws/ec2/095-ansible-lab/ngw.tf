resource "aws_nat_gateway" "ngw" {
    allocation_id = aws_eip.ngw_eip.id
    subnet_id = aws_subnet.sgw_usw2a_1.id
}